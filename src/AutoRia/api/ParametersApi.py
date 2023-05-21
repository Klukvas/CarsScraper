from typing import Union
from src.utils.BaseHttpClient import BaseHttpClient
from src.utils.Methods import HttpMethods
from src.utils.Result import Ok, Error
from src.autoRia.api.baseApi import BaseApi

class ParametersApi(BaseApi):
    ResponseType = Union[Ok, Error]
    def __init__(self, base_url: str) -> None:
        super().__init__()
        self.base_url = base_url
        self.base_client = BaseHttpClient()

    async def get_categories(self) -> ResponseType:
        url = f'{self.base_url}/auto/categories/?api_key={self.current_api_key}'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_bodystyles(self, category_id: int) -> ResponseType:
        url = f'{self.base_url}/auto/categories/{category_id}/bodystyles?api_key={self.current_api_key}'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_marks(self, category_id: int) -> ResponseType:
        url = f'{self.base_url}/auto/categories/{category_id}/marks?api_key={self.current_api_key}'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_models(self, category_id: int, mark_id: int) -> ResponseType:
        url = f'{self.base_url}/categories/{category_id}/marks/{mark_id}/models?api_key={self.current_api_key}'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_generations(self, model_id: int) -> ResponseType:
        url = f'{self.base_url}/generations/by/models/{model_id}/generations?api_key={self.current_api_key}'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_fuel_types(self) -> ResponseType:
        url = f'{self.base_url}/auto/type?api_key={self.current_api_key}.'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_gearboxes(self, categoty_id: int) -> ResponseType:
        url = f'{self.base_url}/auto/categories/{categoty_id}/gearboxes?api_key={self.current_api_key}.'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_countries(self) -> ResponseType:
        url = f'{self.base_url}/auto/countries?api_key={self.current_api_key}'
        response = await self.base_client.make_http_request(url=url, method=HttpMethods.GET.value)
        return response
