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

    async def handle_rate_limit_error(self):
        pass

    async def process_auto_id(self, auto_id):
        result = await self.search_api.get_auto_info(
            auto_id,
            handle_rate_limit_error=False
        )
        if result.is_ok():
            self.logger.debug(f"Get auto info for id: {auto_id}")
            auto_info = result.get_value()
            parsed_auto_data = await self.data_checker.check_auto_data(auto_info)
            await self.auto_query.insert_data(parsed_auto_data)
            self.current_scrapped += 1
            return
        else:
            error = result.get_error()
            if error.get('error', {}).get('error', {}).get('code', '') == 'OVER_RATE_LIMIT':
                return auto_id
            self.logger.error(f"Here is some error with getting auto info: {error}")

    async def get_ids(self, auto_ids: list = []):
        if not auto_ids:
            respose = await self.search_api.get_ids(
                paramters=f'countpage={self.page_count}&page={self.current_page}&order_by=7'
            )
            if respose.is_ok():
                respose_value = respose.get_value()
                auto_ids = respose_value['data']['result']['search_result']['ids']
            else:
                error = respose.get_error()
                self.logger.error(f"Error with getting ids: {error}")

        coros = []
        for ads_id in auto_ids:
            coros.append(self.process_auto_id(ads_id))
        self.logger.debug(f"Created coros for process ids, coros length: {len(coros)}")
        result = await asyncio.gather(*coros)
        auto_id_with_failed_process = list(filter(lambda item: item is not None, result))
        if auto_id_with_failed_process:
            try:
                self.search_api.set_api_key()
                await self.get_ids(auto_id_with_failed_process)
            except ValueError:
                self.logger.error(f"All API keys are used. Summary:\nscrapped: {self.current_scrapped}")

    async def start_parse(self):
        self.search_api.set_api_key()
        pages_for_scrapp = int(self.max_scpapped / self.page_count)
        for _ in range(pages_for_scrapp):
            await self.get_ids()
            self.current_page += 1
        self.logger.info(f"Finised. Summary:\npages: {self.current_page}\ntotal scrapped: {self.current_scrapped}")
