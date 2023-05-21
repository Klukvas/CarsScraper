from src.utils.utils import config_read
from src.AutoRia.api.SearchApi import SearchApi
from src.utils.Env import Env

class Scrapper:

    def __init__(self, base_url: str, countpage: int = 100) -> None:
        self.search_api = SearchApi(base_url=base_url)
        self.env = Env()
        self.countpage = countpage

    def setup_api_keys(self):
        config = config_read(self.env.autoria_config_path)
        self.api_keys: list = config['AUTO_RIA_API_KEYS']
        try:
            current_api_key = self.api_keys.pop()
        except IndexError as error:
            print(f'Here is an error with getting api key: {error}')
        self.search_api.set_api_key(current_api_key)
    
    async def process_ids(self, id):
        auto_info = self.search_api.get_auto_info(auto_id=id)

    async def start_parse(self):
        respose = await self.search_api.get_ids(paramters=f'countpage={self.countpage}')
        if respose.is_ok():
            respose_value = respose.get_value()
            for id in respose_value['result']['search_result']['ids']:
                await self.process_ids(id)
        else:
            respose_error = respose.get_error()
            print(respose_error)