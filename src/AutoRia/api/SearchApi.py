from typing import Union
from src.utils.Methods import HttpMethods
from src.utils.Result import Ok, Error
from src.autoRia.api.baseApi import BaseApi

class SearchApi(BaseApi):
    def __init__(self, base_url: str) -> None:
        super().__init__()
        self.base_url = base_url

    async def get_ids(self, paramters:str='') -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/search?api_key={self.current_api_key}&{paramters}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response

    async def get_auto_info(self, auto_id:int) -> Union[Ok, Error]:
        url = f'{self.base_url}/auto/info?api_key={self.current_api_key}&auto_id={auto_id}'
        response = await self.make_http_request(url=url, method=HttpMethods.GET.value)
        return response
