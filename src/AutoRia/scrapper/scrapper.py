import re
from typing import Any, Union
from logging import Logger
import asyncio
from src.autoRia.api.searchApi import SearchApi
from src.utils.Env import Env
from src.utils import split_array
from src.autoRia.queries import AutoQueries
from .dataChecker import DataChecker

class Scrapper:

    def __init__(
            self,
            base_url: str,
            api_keys: list,
            page_count: int,
            max_scpapped: int,
            logger: Logger,
            auto_query: AutoQueries,
            data_checker: DataChecker
        ) -> None:

        self.search_api = SearchApi(
            base_url=base_url,
            api_keys=api_keys
        )
        self.data_checker = data_checker
        self.auto_query = auto_query
        self.env = Env()
        self.api_keys = api_keys
        self.page_count = page_count
        self.max_scpapped = max_scpapped
        self.current_page = 0
        self.current_scrapped = 0
        self.logger = logger
        self.current_api_key = None

    

    async def process_ids(self, ads_id):
        result = await self.search_api.get_auto_info(auto_id=ads_id)
        if result.is_ok():
            self.logger.debug(f"Get auto info for id: {ads_id}")
            auto_info = result.get_value()
            parsed_auto_data = await self.data_checker.check_auto_data(auto_info)
            # parsed_result = self.process_auto_data(auto_info)
            await self.auto_query.insert_data(parsed_auto_data)
            self.current_scrapped += 1
        else:
            error = result.get_error()
            self.logger.error(f"Here is some error with getting auto info: {error}")

    async def get_ids(self):
        respose = await self.search_api.get_ids(
            paramters=f'countpage={self.page_count}&page={self.current_page}&order_by=7'
        )
        if respose.is_ok():
            respose_value = respose.get_value()
            coros = []
            for ads_id in respose_value['data']['result']['search_result']['ids'][:3]:
                coros.append(self.process_ids(ads_id))
            self.logger.debug(f"Created coros for process ids, coros length: {len(coros)}")
            await asyncio.gather(*coros)
        else:
            error = respose.get_error()
            self.logger.error(f"Error with getting ids: {error}")

    async def start_parse(self):
        self.search_api.set_api_key()
        pages_for_scrapp = int(self.max_scpapped / self.page_count)
        for _ in range(pages_for_scrapp):
            await self.get_ids()
            self.current_page += 1
