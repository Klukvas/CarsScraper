from typing import Any
from logging import Logger
from sqlalchemy.future import select
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.exc import IntegrityError
from src.autoRia.models.parameters import (
    Bodystyles,
    Marks
)
from src.autoRia.models.databaseClient import DatabaseClient



class ParametersQueries:

    def __init__(self, db_client: DatabaseClient, logger: Logger) -> None:
        self.db_client = db_client
        self.logger = logger

    async def commit_or_revert(self, session: AsyncSession) -> None:
        try:
            await session.commit()
        except IntegrityError:
            self.logger.warning(
                f"Rollback. Rollback based on error: IntegrityError(duplicate key value)"
            )
            await session.rollback()
        finally:
            self.logger.debug(f"Close session after commit")
            await session.close()

    async def get_form_common_model(self, model) -> None:
        async with self.db_client.session() as session:
            query = select(model)
            categories = await session.execute(query)
            return categories.scalars().all()

    async def insert_common_data(self, data: dict, model):
        async with self.db_client.session() as session:
            new_category = model(
                name = data['name'],
                value = data['value']
            )
            await self.commit_or_revert(
                record=new_category,
                session=session
            )

    async def insert_bodystyles(self, data: dict )-> None:
        async with self.db_client.session() as session:
            new_bodystyle = Bodystyles(
                category_id = data['category_id'],
                name = data['name'],
                value = data['value']
            )
            await self.commit_or_revert(
                record=new_bodystyle,
                session=session
            )

    async def insert_marks_from_list(self, data_list:list[dict]) -> None:
        async with self.db_client.session() as session:
            for data in data_list:
                new_bodystyle = Marks(
                    category_id = data['category_id'],
                    name = data['name'],
                    value = data['value']
                )
                session.add(new_bodystyle)
            await self.commit_or_revert(
                session=session
            )