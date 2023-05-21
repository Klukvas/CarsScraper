import asyncio
from src.utils.utils import config_read
from src.utils.Env import Env
from src.autoRia.Scrapper import Scrapper
from src.utils.Logger import Logger

async def main():
    env = Env()
    logger = Logger().custom_logger(name='AutoRiaLogger')
    config = config_read(env.autoria_config_path)
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
    

if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())

