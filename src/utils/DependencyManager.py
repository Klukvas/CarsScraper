#     await db_client.create_database_if_not_exist(
#             user=env.pg_user,
#             database=env.pg_auto_db_name,
#             password=env.pg_password
#         )
#     await db_client.init_models()

#     await scrapper.start_parse()
from .Env import Env
from .Logger import Logger
from .utils import config_read, build_bd_url
from src.autoRia import DatabaseClient, AutoQueries, ParametersQueries, DataChecker, Scrapper

class SingletonMeta(type):
    """
    The Singleton class can be implemented in different ways in Python. Some
    possible methods include: base class, decorator, metaclass. We will use the
    metaclass because it is best suited for this purpose.
    """

    _instances = {}

    def __call__(cls, *args, **kwargs):
        """
        Possible changes to the value of the `__init__` argument do not affect
        the returned instance.
        """
        if cls not in cls._instances:
            instance = super().__call__(*args, **kwargs)
            cls._instances[cls] = instance
        return cls._instances[cls]
    
class DependencyManager(metaclass=SingletonMeta):

    def __init__(self) -> None:
        self._dependencies = {}

    @property
    def current_config(self) -> dict:
        return config_read(self.env.autoria_config_path)
    
    @property
    def data_checker(self) -> DataChecker:
        if DataChecker not in self._dependencies.keys():
            data_checker = DataChecker(
                params_queries=self._dependencies[ParametersQueries],
                logger=self._dependencies[Logger]
            )
            self._dependencies[DataChecker] = data_checker
        return self._dependencies[DataChecker]

    @property
    def logger(self) -> Logger:
        if Logger not in self._dependencies.keys():
            logger = Logger().custom_logger(name='AutoRiaLogger')
            self._dependencies[Logger] = logger
        return self._dependencies[Logger]

    @property
    def parameters_queries(self) -> ParametersQueries:
        if ParametersQueries not in self._dependencies.keys():
            parameters_queries = ParametersQueries(
                db_client=self.db_client,
                logger=self.logger
            )
            self._dependencies[ParametersQueries] = parameters_queries
        return self._dependencies[ParametersQueries]

    @property
    def env(self) -> Env:
        if Env not in self._dependencies.keys():
            env = Env()
            self._dependencies[Env] = env
        return self._dependencies[Env]

    @property
    def auto_query(self) -> AutoQueries:
        if AutoQueries not in self._dependencies.keys():
            auto_query = AutoQueries(
                logger=self.logger,
                db_client=self.db_client
            )
            self._dependencies[AutoQueries] = auto_query
        return self._dependencies[AutoQueries]

    @property
    def db_url(self) -> str:
        db_url = build_bd_url(self.env)
        return db_url

    @property
    def db_client(self) -> DatabaseClient:
        if DatabaseClient not in self._dependencies.keys():
            db_client = DatabaseClient(self.db_url)
            self._dependencies[DatabaseClient] = db_client
        return self._dependencies[DatabaseClient]

    @property
    def scrapper(self) -> Scrapper:
        if Scrapper not in self._dependencies.keys():
            scrapper = Scrapper(
                base_url=self.base_url,
                api_keys=self.api_keys,
                page_count=self.page_count,
                max_scpapped=self.max_scpapped,
                logger=self.logger,
                auto_query=self.auto_query,
                data_checker=self.data_checker
            )
            self._dependencies[Scrapper] = scrapper
        return self._dependencies[Scrapper]
    
    @property
    def api_keys(self) -> list:
        api_keys = self.current_config.get('AUTO_RIA_API_KEYS', None)
        if api_keys is None:
            raise AttributeError(f"api_keys is None")
        return api_keys
    
    @property
    def base_url(self) -> str:
        base_url = self.current_config.get('BASE_URL', None)
        if base_url is None:
            raise AttributeError(f"base_url is None")
        return base_url
    
    @property
    def page_count(self) -> int:
        page_count = self.current_config.get('PAGE_COUNT', None)
        if page_count is None:
            raise AttributeError(f"page_count is None")
        return page_count
    
    @property
    def max_scpapped(self) -> int:
        max_scpapped = self.current_config.get('MAX_SCRAPPED', None)
        if max_scpapped is None:
            raise AttributeError(f"max_scpapped is None")
        if max_scpapped < self.page_count:
            raise ValueError(f'Value MAX_SCRAPPED must not be lower than PAGE_COUNT or at least should be equal to it')
        return max_scpapped
    