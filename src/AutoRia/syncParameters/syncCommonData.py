from src.autoRia.models import (
    Categories,
    Countries,
    FuelTypes,
    States
)
from src.autoRia.api.parametersApi import ParametersApi

class SyncCommonData:
    def __init__(self, parameters_api: ParametersApi) -> None:
        self.parameters_api = parameters_api
    
    @property
    def countries(self):
        return {
            "api_method": self.parameters_api.get_countries,
            "model": Countries
        }
    
    @property
    def fuel_types(self):
        return {
            "api_method": self.parameters_api.get_fuel_types,
            "model": FuelTypes
        }

    @property
    def states(self):
        return {
            "api_method": self.parameters_api.get_states,
            "model": States
        }
    
    @property
    def categories(self):
        return {
            "api_method": self.parameters_api.get_categories,
            "model": Categories
        }
   