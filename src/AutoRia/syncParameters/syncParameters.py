from typing import Any
from src.autoRia.api.parametersApi import ParametersApi
from src.autoRia.queries.parametersQueries import ParametersQueries
from typing import Callable, Union
from src.utils.Result import Ok, Error
from src.utils import split_array
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
            max_requests: int,
            db_client: DatabaseClient
        ) -> None:
        self.api_keys = api_keys
        self.max_requests = max_requests
        self.parameters_api = parameters_api
        self.parameters_queries = parameters_queries
        self.db_client = db_client
        self.logger = logger

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

    async def execute_synchronization(self, splitted_coros):
        for sub_coros_list in splitted_coros:
            for coro in asyncio.as_completed(sub_coros_list):
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

    async def sync_all_bodystyles(self, splitted_coros: list=[]):
        if not splitted_coros:
            categories = await self.parameters_queries.get_form_common_model(model=Categories)
            get_bodystyles_coros = [
                    self.parameters_api.get_bodystyles(category.value)
                    for category in categories
                ]
            # split array based on count of max requests
            # нам это нужно что бы в случае превышения лимитом запросов на повторную отправку с новым ключем ушло меньшее к-лво запросов
            splitted_coros = split_array(arr=get_bodystyles_coros, subarray_size=int(self.max_requests / 2))
        calls_with_key_limit = []
        for sub_coros_list in splitted_coros:
            for coro in asyncio.as_completed(sub_coros_list):
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
                    if error['error']['error']['code'] == 'OVER_RATE_LIMIT':
                        calls_with_key_limit.append(
                            self.parameters_api.get_bodystyles(error['params_for_save']['category_id'])
                        )
                    else:
                        raise ValueError(f"Error with getting data from bodystyles: {error}")
        if calls_with_key_limit:
            self.parameters_api.set_api_key()
            await self.sync_all_bodystyles(splitted_coros=split_array(arr=calls_with_key_limit, subarray_size=int(self.max_requests / 2)))
            

    async def sycn_all_marks(self, splitted_coros: list=[]):
        """
            splitted_coros used for reusing of the function
        """
        if not splitted_coros:
            #if it is first call get all categories
            categories = await self.parameters_queries.get_form_common_model(model=Categories)
            self.logger.debug(f"getting all categories")
            get_marks_coros = [
                self.parameters_api.get_marks(category.value)
                for category in categories
            ]
            # split array based on count of max requests
            # нам это нужно что бы в случае превышения лимитом запросов на повторную отправку с новым ключем ушло меньшее к-лво запросов
            splitted_coros = split_array(
                arr=get_marks_coros, 
                subarray_size= int(self.max_requests / 2)
            )
            # splitted_coros looks like [ [coro, coro, coro], [coro, coro, coro] ]
        # list for track calls which ended with OVER_RATE_LIMIT error
        calls_with_key_limit = []
        for sub_coros_list in splitted_coros:
            for coro in asyncio.as_completed(sub_coros_list):
                result = await coro
                if result.is_ok():
                    marks = result.get_value()
                    category_id = int(marks['params_for_save']['category_id'])
                    inser_params_data = []
                    for mark in marks['data']:
                        # create a list of dicts with data for insert
                        inser_params_data.append(
                            {
                                'category_id': int(category_id),
                                'name': mark['name'],
                                'value': mark['value']
                            }
                        )
                        self.logger.debug(f"Added mark: {mark['value']} with category id: {category_id} to list for insert")
                    # split list of data for insert
                    for sub_list in split_array(inser_params_data, int(len(inser_params_data) * 0.25)):
                        # create list of tasks for insert
                        inser_params_tasks = [
                            self.parameters_queries.insert_marks_from_list(data=element)
                            for element in sub_list
                        ]
                        self.logger.debug(f"Calling gather with created tasks")
                        await asyncio.gather(*inser_params_tasks)
                else:
                    error = result.get_error()
                    if error['error']['error']['code'] == 'OVER_RATE_LIMIT':
                        self.logger.debug(f"Error(OVER_RATE_LIMIT) with calling get_marks for category id: {error['params_for_save']['category_id']}")
                        calls_with_key_limit.append(
                            self.parameters_api.get_marks(error['params_for_save']['category_id'])
                        )
                    else:
                        raise ValueError(f"Error with getting data from bodystyles: {error}")
        if calls_with_key_limit:
            try:
                self.parameters_api.set_api_key()
            except ValueError as exc:
                Logger.error(f"Error with setting api key: {exc}")
                return
            await self.sycn_all_marks(
                splitted_coros=split_array(
                    calls_with_key_limit, 
                    int(self.max_requests / 2)
                )
            )
