import aiohttp
from src.utils.Result import Error, Ok
from typing import Union, Coroutine


class BaseHttpClient:
    
    def __init__(self) -> None:
        pass
    
    async def make_http_request(self, url: str, method: str, data: Union[dict, None]=None) -> Union[Ok, Error]:
        async with aiohttp.ClientSession() as session:
            async with session.request(method, url, json=data, ssl=False) as response:
                json_response = await response.json()
                if response.ok:
                    return Ok({'data': json_response})
                else:
                    return Error({'error':json_response})

