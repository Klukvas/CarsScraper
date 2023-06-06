from typing import Union
from src.utils.Methods import HttpMethods
from src.utils.Result import Ok, Error
from src.autoRia.api.baseApi import BaseApi

class SearchApi(BaseApi):
    def __init__(self, base_url: str, api_keys: list, handle_rate_limit_error: bool=True) -> None:
        super().__init__(api_keys, handle_rate_limit_error)
        self.base_url = base_url

    async def get_ids(self, paramters:str='') -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/search?api_key={self.current_api_key}&{paramters}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_auto_info(self, auto_id:int) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/info?api_key={self.current_api_key}&auto_id={auto_id}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response
    # TODO: check, it is not working
    async def get_ids_without_key(self, page: int, count_page:int) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto?order_by=7&page={page}&countpage={count_page}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response