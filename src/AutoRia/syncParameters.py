from typing import Any
from src.autoRia.api.parametersApi import ParametersApi
from src.autoRia.queries.parametersQueries import ParametersQueries


class SyncParameters:
    
    def __init__(self, base_url: str, session: Any, api_keys: list) -> None:
        self.api_keys = api_keys
        self.parameters_api = ParametersApi(
            base_url=base_url
        )
        self.parameters_queries = ParametersQueries(
            session
        )
        self.setup()

    def setup(self):
        try:
            api_key = self.api_keys.pop()
            self.parameters_api.set_api_key(api_key)
        except IndexError:
            raise IndexError('adlsanf')
    
    def _get_ids(self, data: dict) -> list:
        ids = []
        for item in data:
            ids.append(item['value'])
        return ids


    async def sync_categories(self):
        response = await self.parameters_api.get_categories()
        if response.is_ok():
            data = response.get_value()['data']
            ids = self._get_ids(data)
            current_categories = await self.parameters_queries.get_categories()
            for new_category in data:
                await self.parameters_queries.set_categories(new_category)
                
            
        else:
            error = response.get_error()
            raise ValueError(f"Error with getting data from categories: {error}")