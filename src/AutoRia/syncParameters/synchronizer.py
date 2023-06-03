import asyncio
from src.autoRia.api import ParametersApi
from src.autoRia.models import DatabaseClient
from src.utils import build_bd_url, config_read, Env, Logger as CustomLogger
from src.autoRia.queries import ParametersQueries
from .syncCommonData import SyncCommonData
from .syncParameters import SyncParameters


class SynchronizerController:
    def __init__(self, logger_name: str = 'AutoRiaLogger'):
        self.logger_name = logger_name
        self.env = Env()
        self.config = config_read(self.env.autoria_config_path)
        self.logger = CustomLogger().custom_logger(name=self.logger_name)
        self.db_url = build_bd_url(self.env)
        self.db_client = DatabaseClient(db_url=self.db_url)
        self.parameters_api = ParametersApi(
            base_url=self.config['BASE_URL'],
            logger=self.logger,
            api_keys=self.config['AUTO_RIA_API_KEYS'],
            handle_rate_limit_error=False
        )
        self.parameters_api.set_api_key()
        self.common_sync_data = SyncCommonData(self.parameters_api)
        self.parameters_queries = ParametersQueries(
            db_client=self.db_client,
            logger=self.logger
        )
        self.synchronizer = SyncParameters(
            parameters_api=self.parameters_api,
            parameters_queries=self.parameters_queries,
            db_client=self.db_client,
            api_keys=self.config['AUTO_RIA_API_KEYS'],
            max_requests=self.config['COUNT_REQUESTS_PER_HOUR'],
            logger=self.logger
        )

    async def sync_sommon(self):
        tasks = []
        sync_attrs = dir(self.common_sync_data)
        for attr in sync_attrs:
            if not attr.startswith('__'):
                sync_property = getattr(self.common_sync_data, attr)
                if not isinstance(sync_property, ParametersApi):
                    tasks.append(
                        self.synchronizer.sync_common_props(
                            api_get_method=sync_property['api_method'],
                            model=sync_property['model']
                        )
                    )
        await asyncio.gather(*tasks)

    async def start(self):
        await self.db_client.create_database_if_not_exist(
            user=self.env.pg_user,
            database=self.env.pg_auto_db_name,
            password=self.env.pg_password
        )
        await self.db_client.init_models()
        sync_variant = self.config.get('SYNCHRONIZATION_OPTIONS', 'common_only')
        if sync_variant == 'all':
            # await self.sync_sommon()
            await self.synchronizer.sync_all_bodystyles()
        elif sync_variant == 'bodystyles':
            await self.synchronizer.sync_all_bodystyles()
        elif sync_variant == 'marks':
            await self.synchronizer.sycn_all_marks()
        elif sync_variant == 'common_only':
            pass
            # await self.sync_sommon()
        else:
            self.logger.error(f'sync variant: {sync_variant} is not supported')
