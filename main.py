import asyncio
from src.utils import config_read, Env, Logger
from src.autoRia.scrapper.scrapper import Scrapper
from src.autoRia.syncParameters import SynchronizerController
from src.rst.scrapper import Scrapper as rstScrapepr
from src.autoRia.queries import AutoQueries, ParametersQueries
from src.autoRia.models import DatabaseClient
from src.utils import build_bd_url
from src.autoRia.scrapper.dataChecker import DataChecker


async def scrapper():
    env = Env()
    config = config_read(env.autoria_config_path)
    logger = Logger().custom_logger(name='AutoRiaLogger')
    base_url=config['BASE_URL']
    api_keys: list = config['AUTO_RIA_API_KEYS']
    page_count = config['PAGE_COUNT']
    max_scpapped = config['MAX_SCRAPPED']
    if max_scpapped < page_count:
        raise ValueError(f'Value MAX_SCRAPPED must not be lower than PAGE_COUNT at least should be equal to it')
    db_url = build_bd_url(env)
    db_client = DatabaseClient(db_url=db_url)
    auto_query = AutoQueries(
        logger=logger,
        db_client = db_client
    )
    parameters_queries = ParametersQueries(
        db_client=db_client,
        logger=logger
    )
    data_checker = DataChecker(
        params_queries=parameters_queries
    )
    scrapper = Scrapper(
        base_url=base_url,
        api_keys=api_keys,
        page_count=page_count,
        max_scpapped=max_scpapped,
        logger=logger,
        auto_query=auto_query,
        data_checker=data_checker
    )

    await db_client.create_database_if_not_exist(
            user=env.pg_user,
            database=env.pg_auto_db_name,
            password=env.pg_password
        )
    await db_client.init_models()

    await scrapper.start_parse()

async def sync_data(sync_variant: str='all'):
    controller = SynchronizerController()
    await controller.start()

def rst_scrapper():
    rstScrapepr().start()
# if __name__ == '__main__':
#     rst_scrapper()
async def test():
    env = Env()
    logger = Logger().custom_logger(name='AutoRiaLogger')
    db_url = build_bd_url(env)
    db_client = DatabaseClient(db_url=db_url)
    params_query = ParametersQueries(
        logger=logger,
        db_client = db_client
    )
    
    
    data_checker = DataChecker(
        params_queries=params_query
    )
    await data_checker.setup()


if __name__ == '__main__':
    # loop = asyncio.get_event_loop()
    # loop.run_until_complete(test())

    # loop = asyncio.get_event_loop()
    # loop.run_until_complete(sync_data())

    loop = asyncio.get_event_loop()
    loop.run_until_complete(scrapper())

