from src.autoRia.queries import ParametersQueries
import asyncio
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
        """
        method set class attributes to existing ids in db
        attribute names takes from attribute_mapping
        example:
            after call class will have attribute self.mark_ids equal to list with 
            id of all marks
        """
        for attribute, model_class in self.attribute_mapping.items():
            await self._setup_attribute(attribute, model_class)
        self.setup_called = True

    async def _setup_attribute(self, attribute: str, model_class: Type) -> None:
        records = await self.params_queries.get_distinct_records_from(model_class)
        setattr(self, attribute, [record.id for record in records])


    
    def create_current_auto_ids(self, data: dict[str, dict]) -> dict:
        def transform_by_weight(relation_ids: dict):
            """
            {
                '3': [
                        {
                        "id": data['autoData'].get("bodyId", None),
                        "method": self.check_bodystyle,
                        "weight": 2
                    },
                ]
            }
            """
            transformed_data = {}
            for value in relation_ids.values():
                weight = str(value['weight'])
                if weight in transformed_data.keys():
                    transformed_data[weight].append(value)
                else:
                    transformed_data[weight] = [value]
            return transformed_data

        relation_ids =  {
            "body_id": {
                "id": data['autoData'].get("bodyId", None),
                "method": self.check_bodystyle,
                "weight": 2
            },
            "mark_id":{ 
                "id": data.get("markId", None),
                "method": self.check_mark,
                "weight": 2
            },
            "model_id":{ 
                "id": data.get("modelId", None),
                "method": self.check_model,
                "weight": 3
            },
            "fuel_id":{ 
                "id":  data['autoData'].get("fuelId", None),
                "method": self.check_fuel,
                "weight": 1
            },
            "gearbox_id":{ 
                "id":  data['autoData'].get("gearBoxId", None),
                "method": self.check_gearbox,
                "weight": 2
            },
            "category_id":{ 
                "id":data['autoData'].get("categoryId", None),
                "method": self.check_category,
                "weight": 1
            },
            "state_id":{ 
                "id":  data['stateData'].get("stateId", None),
                "method": self.check_state,
                "weight": 1
            },
            "city_id":{ 
                "id":  data['stateData'].get("cityId", None),
                "method": self.check_city,
                "weight": 2
            }
        }
        if all([
            attr["id"] is None
            for attr in relation_ids.values()
        ]):
            empty_id = {k: v for k, v in relation_ids.items() if not v['id']}

            raise Exception(f"Do not found some id: {empty_id}")
        return transform_by_weight(relation_ids)

    async def check_auto_data(self, raw_auto_data: dict):
        """
        method take new raw auto data
        and check if all ids exists if db
        if not - creates a new record in db with that id
        'weight' parameter in current_auto_ids means how many relationships the model has, 
        the more relationships the larger the value. 
        The check goes from the minimum value to the maximum
        """
        if not self.setup_called:
            await self.setup()
        data = raw_auto_data['data']
        current_auto_ids = self.create_current_auto_ids(data)
        # There should be strict sorting
        # From models without relations to models with relations
        for item in sorted(current_auto_ids.items(), key=lambda x: int(x[0])):
            coros = []
            for value in item[1]:
                coros.append(value['method'](value['id'], data))
            await asyncio.gather(*coros)


    async def check_fuel(self, fuel_id: int, data: dict) -> None:
        if fuel_id not in self.fuel_ids:
            await self.params_queries.insert_common_data(
                data = {
                    'name':data['autoData']['fuelNameEng'],
                    'value': data['autoData']['fuelId']
                },
                added_by_sync=False,
                model=FuelTypes
            )
        self.fuel_ids.append(fuel_id)

    async def check_model(self, model_id: int, data: dict) -> None:
        if model_id not in self.model_ids:
            await self.params_queries.insert_model(
                data = {
                    "category_id": data['autoData']['categoryId'],
                    'name': data['modelNameEng'],
                    'id': model_id,
                },
                added_by_sync=False
            )
        self.model_ids.append(model_id)

    async def check_gearbox(self, gearbox_id: int, data: dict) -> None:
        if gearbox_id not in self.gearbox_ids:
            await self.params_queries.insert_gearbox(
                data={
                    'category_id': data['autoData']['categoryId'],
                    'name': data['autoData']['gearboxName'],
                    'id': gearbox_id,
                },
                added_by_sync=False
            )
        self.gearbox_ids.append(gearbox_id)

    async def check_bodystyle(self, body_id: int, data: dict) -> None:
        if body_id not in self.body_ids:
            await self.params_queries.insert_bodystyles(
                data={
                    'category_id': data['autoData']['categoryId'],
                    'name': data['autoData']['subCategoryNameEng'],
                    'id': body_id,
                },
                added_by_sync=False
            )
        self.body_ids.append(body_id)


    async def check_city(self, city_id:int, data:dict) -> None:
        if city_id not in self.city_ids:
            await self.params_queries.insert_cities(
                data={
                    "id": city_id,
                    "name": data['stateData']['name'],
                    "state_id": data['stateData']['stateId']
                },
                added_by_sync=False
            )
        self.city_ids.append(city_id)

    async def check_state(self, state_id: int, data: dict) -> None:
        if state_id not in self.state_ids:
            await self.params_queries.insert_common_data(
                data={
                    'name': data['stateData']['regionName'],
                    'value': state_id,
                },
                model=States,
                added_by_sync=False
            )
        self.state_ids.append(state_id)

    async def check_category(self, category_id: int, data: dict) -> None:
        if category_id not in self.category_ids:
            await self.params_queries.insert_common_data(
                data={
                    'name': data['autoData']['categoryNameEng'],
                    'value': category_id,
                },
                model=Categories,
                added_by_sync=False
            )
        self.category_ids.append(category_id)

    
    async def check_mark(self, mark_id: int, data: dict) -> None:
        if mark_id not in self.mark_ids:
            await self.params_queries.insert_marks(
                {
                    'category_id': data['autoData']["categoryId"],
                    'name': data['markName'],
                    'id': mark_id
                },
                added_by_sync=False
            )
            self.mark_ids.append(mark_id)


        
