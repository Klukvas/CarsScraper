import asyncpg
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.ext.asyncio import(
    create_async_engine,
    AsyncSession,
    async_sessionmaker,
)
from sqlalchemy.pool import NullPool


Base = declarative_base()


class DatabaseClient:

    def __init__(self, db_url:str):
        self.db_url = db_url
        self.engine = create_async_engine(db_url, future=True, poolclass=NullPool)
        self.created_sessions = []
        self.session = async_sessionmaker(
                self.engine, class_=AsyncSession, expire_on_commit=False
        )
    async def create_database_if_not_exist(
            self, 
            user: str, 
            database: str, 
            password: str, 
            default_db:str='postgres'
    ) -> None:
        try:
            await asyncpg.connect(user=user, database=database, password=password)
        except asyncpg.InvalidCatalogNameError:
            # Database does not exist, create it.
            sys_conn = await asyncpg.connect(
                database=default_db,
                user=user,
                password=password
            )
            await sys_conn.execute(
                f'CREATE DATABASE "{database}" OWNER "{user}"'
            )
            await sys_conn.close()

    async def init_models(self):
        async with self.engine.begin() as conn:
            # await conn.run_sync(Base.metadata.drop_all)
            await conn.run_sync(Base.metadata.create_all)
