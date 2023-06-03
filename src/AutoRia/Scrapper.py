from typing import Any, Union
from logging import Logger
from src.autoRia.api.searchApi import SearchApi
from src.utils.Env import Env
import re

class Scrapper:

    def __init__(
            self,
            base_url: str,
            api_keys: list,
            page_count: int,
            max_scpapped: int,
            logger: Logger
        ) -> None:

        self.search_api = SearchApi(
            base_url=base_url,
            api_keys=api_keys
        )
        self.env = Env()
        self.api_keys = api_keys
        self.page_count = page_count
        self.max_scpapped = max_scpapped
        self.current_page = 0
        self.current_scrapped = 0
        self.logger = logger
        self.current_api_key = None


    def process_auto_data(self, data: dict) -> dict:
        def parse_fuel(fuel: str) -> float:
            regex = r"\d+(\.\d+)?"
            fuel_group = re.search(regex, fuel)
            try:
                fuel = float(fuel_group.group(0))
            except:
                fuel = 0.0
            return fuel

        breakpoint()
        data = data['data']
        auto_data: dict = data['autoData']
        parsed_data ={
                "auto_id": auto_data.get("autoId", None),
                "body_id": auto_data.get("bodyId", None),
                "mark_id": data.get("markId", None),
                "model_id": data.get("modelId", None),
                "USD": data.get("USD", None),
                "UAH": data.get("UAH", None),
                "EUR": data.get("EUR", None),
                "year": auto_data.get("year", None),
                "status_id": auto_data.get("statusId", None),
                "race": auto_data.get("race", None),
                "race_int": auto_data.get("raceInt", None),
                "fuel_id":  auto_data.get("fuelId", None),
                "fuel_int": parse_fuel(auto_data.get("fuelName", "")),
                "gearbox_id":  auto_data.get("gearBoxId", None),
                "drive_id": auto_data.get("driveId", None),
                "drive_name": auto_data.get("driveName", None),
                "category_id":auto_data.get("categoryId", None),
                "damage": data['autoInfoBar'].get("damage", None),
                "href": data.get("linkToView", None),
                "VIN": data.get("VIN", None),
                "state_id":  data['stateData'].get("stateId", None),
                "city_id":  data['stateData'].get("cityId", None),
        }
        return parsed_data

    async def process_ids(self, ads_id):
        result = await self.search_api.get_auto_info(auto_id=ads_id)
        if result.is_ok():
            auto_info = result.get_value()
            parsed_result = self.process_auto_data(auto_info)
            self.current_scrapped += 1
        else:
            error = auto_info.get_error()
            print(error)

    async def get_ids(self):
        respose = await self.search_api.get_ids(
            paramters=f'countpage={self.page_count}&page={self.current_page}&order_by=7'
        )
        if respose.is_ok():
            respose_value = respose.get_value()
            for ads_id in respose_value['data']['result']['search_result']['ids']:
                await self.process_ids(ads_id)
        else:
            respose_error = respose.get_error()
            print(respose_error)

    async def start_parse(self):
        self.search_api.set_api_key()
        pages_for_scrapp = int(self.max_scpapped / self.page_count)
        for _ in range(pages_for_scrapp):
            await self.get_ids()
            self.current_page += 1
