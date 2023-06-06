from src.autoRia.queries import ParametersQueries
from src.autoRia.models import (
    Categories,
    Bodystyles,
    States,
    Cities,
    Marks,
    Models,
    FuelTypes,
    Gearboxes,
    Countries,
    AutoData
)
from typing import Dict, Type, List

class DataChecker:
    def __init__(self, params_queries: ParametersQueries) -> None:
        self.params_queries = params_queries
        self.attribute_mapping: Dict[str, Type] = {
            'drive_ids': Categories,
            'body_ids': Bodystyles,
            'mark_ids': Marks,
            'model_ids': Models,
            'gearbox_ids': Gearboxes,
            'city_ids': Cities,
            'fuel_ids': FuelTypes,
            'state_ids': States,
            'category_ids': Categories
        }

    async def setup(self) -> None:
        for attribute, model_class in self.attribute_mapping.items():
            await self._setup_attribute(attribute, model_class)

    async def _setup_attribute(self, attribute: str, model_class: Type) -> None:
        records = await self.params_queries.get_distinct_records_from(model_class)
        setattr(self, attribute, [record.id for record in records])
