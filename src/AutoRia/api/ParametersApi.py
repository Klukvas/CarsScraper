from typing import Union, Coroutine
from src.utils.Methods import HttpMethods
from src.utils.Result import Ok, Error
from src.autoRia.api.baseApi import BaseApi
from src.utils.utils import log_function_work
from logging import Logger

class ParametersApi(BaseApi):
    def __init__(
            self, 
            base_url: str, 
            logger: Logger, 
            api_keys: list, 
            handle_rate_limit_error: bool=True
        ) -> None:
        super().__init__(api_keys, handle_rate_limit_error)
        self.base_url = base_url
        self.logger = logger
    
    

    @log_function_work()
    async def get_categories(self) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/categories/?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response
    
    @log_function_work()
    async def get_bodystyles(self, category_id: int) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/categories/{category_id}/bodystyles?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value, params_for_save={'category_id': category_id})
        return response

    @log_function_work()
    async def get_marks(self, category_id: int) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/categories/{category_id}/marks?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value, params_for_save={'category_id': category_id})
        return response

    @log_function_work()
    async def get_models(self, category_id: int, mark_id: int) -> Union[Ok, Error]:
        url = f'{self.base_url}/categories/{category_id}/marks/{mark_id}/models?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    @log_function_work()
    async def get_generations(self, model_id: int) -> Union[Ok, Error]:
        url = f'{self.base_url}/generations/by/models/{model_id}/generations?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    @log_function_work()
    async def get_fuel_types(self) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/type?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    @log_function_work()
    async def get_gearboxes(self, categoty_id: int) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/categories/{categoty_id}/gearboxes?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    @log_function_work()
    async def get_countries(self) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/countries?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    @log_function_work()
    async def get_cities(self, state_id) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/states/{state_id}/cities?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response
    
    @log_function_work()
    async def get_states(self) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/states?api_key={self.current_api_key}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response
