from typing import Any, Union
from logging import Logger
import asyncio
from sqlalchemy.future import select
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.exc import IntegrityError
from src.autoRia.models.models import (
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

    async def get_distinct_records_from(self, model: Any) -> Union[list, None]:
        async with self.db_client.session() as session:
            query = select(model).distinct(model.id)
            records = await session.execute(query)
            return records.scalars().all()

    async def get_form_common_model(self, model) -> Any:
        async with self.db_client.session() as session:
            query = select(model)
            categories = await session.execute(query)
            return categories.scalars().all()

    async def insert_common_data(self, data: dict, model):
        async with self.db_client.session() as session:
            new_category = model(
                name = data['name'],
                id = data['value']
            )
            session.add(new_category)
            await self.commit_or_revert(
                session=session
            )

    async def insert_bodystyles(self, data: dict )-> None:
        async with self.db_client.session() as session:
            new_bodystyle = Bodystyles(
                category_id = data['category_id'],
                name = data['name'],
                value = data['value']
            )
            session.add(new_bodystyle)
            await self.commit_or_revert(
                session=session
            )

    async def insert_marks(self, data:Union[list[dict], dict], added_by_sync: bool = True) -> None:
        async def inserter(mark:dict, session):
                new_mark = Marks(
                    category_id = mark['category_id'],
                    name = mark['name'],
                    id = mark['id'],
                    added_by_sync = added_by_sync
                )
                session.add(new_mark)

        async with self.db_client.session() as session:
            if isinstance(data, list):
                coros = [
                    inserter(session=session, mark=item)
                    for item in data
                ]
            else:
                coros = [
                    inserter(session=session, mark=data)
                ]
            
            await asyncio.gather(*coros)
            await self.commit_or_revert(
                session=session
            )