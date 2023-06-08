from src.autoRia.models import AutoData
from src.autoRia.models import DatabaseClient
from src.utils import Logger
from sqlalchemy.ext.asyncio import AsyncSession



class AutoQueries:

    def __init__(self, db_client: DatabaseClient, logger: Logger) -> None:
        self.db_client = db_client
        self.logger = logger

    async def _commit_or_revert(self, session: AsyncSession) -> None:
        try:
            await session.commit()
            self.logger.debug(f"Commited new auto")
        except Exception as ex:
            self.logger.warning(
                f"Rollback. Rollback based on error: {ex}"
            )
            await session.rollback()

    async def insert_data(self, data: dict):
        self.logger.debug(f"Called insert_data with:\n{data}\n")
        async with self.db_client.session() as session:
            new_auto = AutoData(
                auto_id = data['auto_id'],
                body_id = data['body_id'],
                mark_id = data['mark_id'],
                model_id = data['model_id'],
                USD = data['USD'],
                UAH = data['UAH'],
                EUR = data['EUR'],
                year = data['year'],
                status_id = data['status_id'],
                race = data['race'],
                race_int = data['race_int'],
                fuel_id = data['fuel_id'],
                fuel_int = data['fuel_int'],
                gearbox_id = data['gearbox_id'],
                drive_id = data['drive_id'],
                category_id = data['category_id'],
                damage = data['damage'],
                href = data['href'],
                VIN = data['VIN'],
                state_id = data['state_id'],
                city_id = data['city_id'],
            )
            session.add(new_auto)
            self.logger.debug(f"Create a new commit for auto: {data['auto_id']}")
            await self._commit_or_revert(session)