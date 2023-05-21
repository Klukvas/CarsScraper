import asyncio
from src.utils.utils import config_read
from src.utils.Env import Env
from src.AutoRia.Scrapper import Scrapper


if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    env = Env()
    config = config_read(env.autoria_config_path)
    base_url=config['BASE_URL']
    scr = Scrapper(base_url=base_url)
    scr.setup_api_keys()
    loop.run_until_complete(scr.start_parse())

