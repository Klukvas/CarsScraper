from logging import Logger
from src.autoRia.api.searchApi import SearchApi
from src.utils.Env import Env


class Scrapper:

    def __init__(
            self,
            base_url: str,
            api_keys: list,
            page_count: int,
            max_scpapped: int,
            logger: Logger
        ) -> None:

        self.search_api = SearchApi(base_url=base_url)
        self.env = Env()
        self.api_keys = api_keys
        self.page_count = page_count
        self.max_scpapped = max_scpapped
        self.current_page = 0
        self.current_scrapped = 0
        self.logger = logger
        self.current_api_key = None



    async def process_ids(self, ads_id):
        auto_info = await self.search_api.get_auto_info(auto_id=ads_id)
        if auto_info.is_ok():
            result = auto_info.get_value()
            print(result)
            self.current_scrapped += 1
        else:
            error = auto_info.get_error()
            print(error)

    async def get_ids(self):
        respose = await self.search_api.get_ids(
            paramters=f'countpage={self.page_count}&page={self.current_page}'
        )
        if respose.is_ok():
            respose_value = respose.get_value()
            for ads_id in respose_value['data']['result']['search_result']['ids']:
                await self.process_ids(ads_id)
        else:
            respose_error = respose.get_error()
            print(respose_error)

    async def start_parse(self):
        pages_for_scrapp = int(self.max_scpapped / self.page_count)
        for _ in range(pages_for_scrapp):
            await self.get_ids()
            self.current_page += 1
