from typing import Union
from src.utils.Result import Ok, Error
import aiohttp
from src.utils.Env import Env


class BaseApi:
    def __init__(self, api_keys: list) -> None:
        self.env = Env
        self.api_keys = api_keys
        self.current_api_key = None

    def set_api_key(self) -> None:
        try:
            breakpoint()
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
                    if json_response['error']['code'] == 'OVER_RATE_LIMIT':
                        self.set_api_key()
                        return await self.make_http_request(
                            url=url,
                            method=method,
                            headers=headers,
                            data=data
                        )
                    return Error({'error':json_response, 'params_for_save': params_for_save})