import os
from dotenv import load_dotenv


class Env:
    def __init__(self) -> None:
        load_dotenv()
        self._autoria_config_path: str = os.environ['AUTORIA_CONFIG_PATH']
        self._pg_user: str = os.environ['PG_USER']
        self._pg_host: str = os.environ['PG_HOST']
        self._pg_port: str = os.environ['PG_PORT']
        self._pg_password: str = os.environ['PG_PASSWORD']
        self._pg_auto_db_name: str = os.environ['PG_AUTO_DB_NAME']
        self._redis_port: str = os.environ['REDIS_PORT']
        self._redis_host: str = os.environ['REDIS_HOST']

    @property
    def autoria_config_path(self) -> str:
        return self._autoria_config_path

    @property
    def pg_auto_db_name(self) -> str:
        return self._pg_auto_db_name

    @property
    def pg_user(self) -> str:
        return self._pg_user

    @property
    def pg_host(self) -> str:
        return self._pg_host

    @property
    def pg_port(self) -> str:
        return self._pg_port

    @property
    def pg_password(self) -> str:
        return self._pg_password
    
    @property
    def redis_host(self) -> str:
        return self._redis_host
    
    @property
    def redis_port(self) -> str:
        return self._redis_port
