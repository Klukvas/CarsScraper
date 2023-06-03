from typing import Union
from src.utils.Result import Ok, Error
import aiohttp
from src.utils.Env import Env


class BaseApi:
    def __init__(self, api_keys: list, handle_rate_limit_error: bool = True) -> None:
        self.env = Env
        self.api_keys = api_keys
        self.current_api_key = None
        self.handle_rate_limit_error = handle_rate_limit_error

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
        params_for_save: dict={}
    ) -> Union[Ok, Error]:
        async with aiohttp.ClientSession() as session:
            async with session.request(method, url, ssl=False) as response:
                json_response = await response.json()
                if response.ok:
                    return Ok({'data': json_response, 'params_for_save': params_for_save})
                else:
                    if self.handle_rate_limit_error:
                        if json_response['error']['code'] == 'OVER_RATE_LIMIT':
                            self.set_api_key()
                            return await self.make_http_request(
                                url=url,
                                method=method,
                                headers=headers,
                                data=data
                            )
                        else:
                            return Error({'error':json_response, 'params_for_save': params_for_save})
                    return Error({'error':json_response, 'params_for_save': params_for_save})