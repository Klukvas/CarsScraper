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
        self.setup_called = False

    async def setup(self) -> None:
        for attribute, model_class in self.attribute_mapping.items():
            await self._setup_attribute(attribute, model_class)
        self.setup_called = True

    async def _setup_attribute(self, attribute: str, model_class: Type) -> None:
        records = await self.params_queries.get_distinct_records_from(model_class)
        setattr(self, attribute, [record.id for record in records])

    async def check_auto_data(self, raw_auto_data: dict):
        if not self.setup_called:
            await self.setup()
        data = raw_auto_data['data']
        current_auto_ids = {
            "body_id": {
                "id": data['autoData'].get("bodyId", None),
                "method": False
            },
            "mark_id":{ 
                "id": data.get("markId", None),
                "method": self.check_mark
            },
            "model_id":{ 
                "id": data.get("modelId", None),
                "method": False
            },
            "status_id":{ 
                "id": data['autoData'].get("statusId", None),
                "method": False
            },
            "fuel_id":{ 
                "id":  data['autoData'].get("fuelId", None),
                "method": False
            },
            "gearbox_id":{ 
                "id":  data['autoData'].get("gearBoxId", None),
                "method": False
            },
            "drive_id":{ 
                "id": data['autoData'].get("driveId", None),
                "method": False
            },
            "category_id":{ 
                "id":data['autoData'].get("categoryId", None),
                "method": False
            },
            "state_id":{ 
                "id":  data['stateData'].get("stateId", None),
                "method": False
            },
            "city_id":{ 
                "id":  data['stateData'].get("cityId", None),
                "method": False
            }
        }
        if not all([
            bool(attr["id"])
            for attr in current_auto_ids.values
        ]):
            #TODO: something
            return
        coros = []
        # There should be strict sorting
        # From models without relations to models with relations
        for key, value in current_auto_ids.items():
            coros.append(
                value['method'](
                    value['id'],
                    data
                )
            )

    
    async def check_mark(self, mark_id: int, data: dict):
        if mark_id not in self.mark_ids:
            await self.params_queries.insert_marks(
                {
                    'category_id': data['autoData']["categoryId"],
                    'name': data['markName'],
                    'id': mark_id
                },
                added_by_sync=False
            )
        return



        
