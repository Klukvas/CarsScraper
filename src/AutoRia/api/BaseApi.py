from typing import Union
from src.utils.Result import Ok, Error
import aiohttp
from src.utils.Env import Env
import re


class BaseApi:
    def __init__(self, api_keys: list) -> None:
        self.env = Env
        self.api_keys = api_keys
        self.current_api_key = None

    def set_api_key(self) -> None:
        try:
            self.current_api_key = self.api_keys.pop()
        except IndexError:
            raise ValueError(f"All api keys are used")
    

    
    async def make_http_request(
        self, 
        url: str,
        method: str, 
        headers = {}, 
        data: dict={},
        params_for_save: dict={},
        handle_rate_limit_error: bool = True
    ) -> Union[Ok, Error]:
        async with aiohttp.ClientSession() as session:
            async with session.request(method, url, ssl=False) as response:
                try:
                    json_response = await response.json()
                except aiohttp.ContentTypeError:
                    return Error({'error':await response.text(), 'params_for_save': params_for_save})
                if response.ok:
                    return Ok({'data': json_response, 'params_for_save': params_for_save})
                else:
                    if handle_rate_limit_error:
                        if json_response['error']['code'] == 'OVER_RATE_LIMIT':
                            self.set_api_key()
                            new_url = re.sub(
                                r"api_key=[\w|\d]+",
                                f"api_key={self.current_api_key}",
                                url
                            )
                            return await self.make_http_request(
                                url=new_url,
                                method=method,
                                headers=headers,
                                data=data
                            )
                        else:
                            return Error({'error':json_response, 'params_for_save': params_for_save})
                    return Error({'error':json_response, 'params_for_save': params_for_save})