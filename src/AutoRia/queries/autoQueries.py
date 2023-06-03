from src.autoRia.models import AutoData


class AutoQueries:

    def __init__(self) -> None:
        pass

    async def insert_data(self):
        async def inserter(data: dict) -> None:
            new_auto = AutoData(
                auto_id = data['auto_id'],
                body_id = data['body_id'],
                bodystyle = data['bodystyle'],
                mark_id = data['mark_id'],
                mark = data['mark'],
                model_id = data['model_id'],
                model = data['model'],
                USD = data['USD'],
                UAH = data['UAH'],
                EUR = data['EUR'],
                year = data['year'],
                status_id = data['status_id'],
                race = data['race'],
                race_int = data['race_int'],
                fuel_id = data['fuel_id'],
                fuel_type = data['fuel_type'],
                fuel_int = data['fuel_int'],
                gearbox_id = data['gearbox_id'],
                gearbox = data['gearbox'],
                drive_id = data['drive_id'],
                drive_name = data['drive_name'],
                category_id = data['category_id'],
                category = data['category'],
                damage = data['damage'],
                href = data['href'],
                VIN = data['VIN'],
                state_id = data['state_id'],
                state = data['state'],
                city_id = data['city_id'],
                state = data['state'],
            )