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

    async def commit_or_revert(self, record: Any, session: AsyncSession) -> None:
        try:
            session.add(record)
            await session.commit()
        except IntegrityError:
            self.logger.warning(
                f"Rollback: record of {str(record)}. Rollback based on error: IntegrityError(duplicate key value)"
            )
            await session.rollback()

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

    async def insert_marks(self, data:dict) -> None:
        async with self.db_client.session() as session:
            new_bodystyle = Marks(
                category_id = data['category_id'],
                name = data['name'],
                value = data['value']
            )
            await self.commit_or_revert(
                record=new_bodystyle,
                session=session
            )