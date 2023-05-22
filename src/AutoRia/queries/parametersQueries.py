from src.autoRia.models.parameters import Categories
from src.autoRia.models.databaseClient import DatabaseClient
from sqlalchemy.future import select
from sqlalchemy.exc import IntegrityError
from sqlalchemy.ext.asyncio import AsyncSession
from typing import Callable
from functools import wraps

def revert_commit(func):
    @wraps(func)
    async def wrapper(*args, **kwargs):
        try:
            result = await func(*args, **kwargs)
            return result
        except IntegrityError:
            print(f"Rollback: {func.__name__}. args: {args}. kwargs: {kwargs}")
            await args[0].session.rollback()
    return wrapper

class ParametersQueries:
    
    def __init__(self, session: AsyncSession) -> None:
        self.session = session

    async def get_categories(self):
        q = select(Categories)
        categories = await self.session.execute(q)
        return categories.scalars().all()
    @revert_commit
    async def set_categories(self, data: dict):
        new_category = Categories(
            name = data['name'],
            value = data['value']
        )
        self.session.add(new_category)
        await self.session.commit()
