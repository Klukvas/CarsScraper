from typing import Any
from src.autoRia.api.parametersApi import ParametersApi
from src.autoRia.queries.parametersQueries import ParametersQueries
from typing import Callable, Union
from src.utils.Result import Ok, Error
from enum import Enum
from logging import Logger
import asyncio
from src.autoRia.models import (
    Categories,
    Bodystyles,
    States,
    Cities,
    Marks,
    Models,
    FuelTypes,
    Gearboxes,
    Countries
)
from src.autoRia.api.parametersApi import ParametersApi

from src.autoRia.models.databaseClient import DatabaseClient


class SyncParameters:

    def __init__(
            self, 
            parameters_api: ParametersApi, 
            parameters_queries: ParametersQueries, 
            api_keys: list, 
            logger: Logger, 
            db_client: DatabaseClient
        ) -> None:
        self.api_keys = api_keys
        self.parameters_api = parameters_api
        self.parameters_queries = parameters_queries
        self.db_client = db_client

    async def sync_common_props(self, api_get_method: Callable[[], Union[Ok, Error]], model: Callable):
        result = await api_get_method()
        tasks = []
        if result.is_ok():
            # get list of all categories
            data = result.get_value()['data']
            # get categories from db
            current_categories = \
                await self.parameters_queries.get_form_common_model(
                    model=model
                )
            # get list of ids of categories from db
            current_categories_ids = [category.value for category in current_categories]
            for new_category in data:
                if new_category['value'] not in current_categories_ids:
                    tasks.append(
                        self.parameters_queries.insert_common_data(new_category, model)
                    )
            asyncio.gather(*tasks)
        else:
            error = result.get_error()
            raise ValueError(f"Error with getting data from {api_get_method.__name__}: {error}")
    
    async def sync_all_bodystyles(self):
        categories = await self.parameters_queries.get_form_common_model(model=Categories)
        get_bodystyles_coros = [
                self.parameters_api.get_bodystyles(category.value)
                for category in categories
            ]
        for coro in asyncio.as_completed(get_bodystyles_coros):
            result = await coro
            if result.is_ok():
                bodystyles = result.get_value()
                category_id = int(bodystyles['params_for_save']['category_id'])
                inser_params_tasks = []
                for bodystyle in bodystyles['data']:
                    inser_params_tasks.append(
                        self.parameters_queries.insert_bodystyles(
                            data={
                                'category_id': category_id,
                                'name': bodystyle['name'],
                                'value': bodystyle['value']
                            }
                        )
                    )
                await asyncio.gather(*inser_params_tasks)
            else:
                error = result.get_error()
                raise ValueError(f"Error with getting data from bodystyles: {error}")
            

    async def sycn_all_marks(self):
        categories = await self.parameters_queries.get_form_common_model(model=Categories)
        get_marks_coros = [
                self.parameters_api.get_marks(category.value)
                for category in categories
            ]
        for coro in asyncio.as_completed(get_marks_coros):
            result = await coro
            if result.is_ok():
                marks = result.get_value()
                category_id = int(marks['params_for_save']['category_id'])
                inser_params_tasks = []
                for mark in marks['data']:
                    inser_params_tasks.append(
                        self.parameters_queries.insert_marks(
                            data={
                                'category_id': int(category_id),
                                'name': mark['name'],
                                'value': mark['value']
                            }
                        )
                    )
                await asyncio.gather(*inser_params_tasks)

