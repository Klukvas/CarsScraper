import asyncio
from src.utils.utils import config_read
from src.utils.Env import Env
from src.autoRia.scrapper import Scrapper
from src.utils.Logger import Logger
from src.autoRia.syncParameters import SyncParameters
from src.autoRia.models.databaseClient import DatabaseClient

from sqlalchemy_utils import database_exists, create_database


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
    
    scrapper = Scrapper(
        base_url=base_url,
        api_keys=api_keys,
        page_count=page_count,
        max_scpapped=max_scpapped, 
        logger=logger
    )

    scrapper.setup()
    await scrapper.start_parse()

async def sync_data():
    env = Env()
    config = config_read(env.autoria_config_path)
    base_url=config['BASE_URL']
    api_keys: list = config['AUTO_RIA_API_KEYS']
    db_url = 'postgresql+asyncpg://{username}:{password}@{host}:{port}/{db_name}'.format(
        username=env.pg_user,
        password=env.pg_password,
        host=env.pg_host,
        port=env.pg_port,
        db_name=env.pg_auto_db_name
    )
    db_client = DatabaseClient(
        db_url=db_url
    )
    try:
        session = await db_client.get_session()

        await db_client.create_database_if_not_exist(
            user=env.pg_user, 
            database=env._pg_auto_db_name,
            password=env.pg_password
        )
        await db_client.init_models()
        sync = SyncParameters(
            base_url=base_url,
            session=session,
            api_keys=api_keys
        )

        await sync.sync_categories()
    finally:
        await session.close()


if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    loop.run_until_complete(sync_data())

