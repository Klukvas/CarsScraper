import sqlalchemy as sa
from src.utils.DependencyManager import DependencyManager
from src.dataBase.models import MainMarketDataView

class ServerQueries:
    def __init__(self) -> None:
        dpm = DependencyManager()
        self.db_client = dpm.db_client

    @staticmethod
    def _result_builder(records):
        columns_names = list(records.keys())
        result = [dict(zip(columns_names, record)) for record in records]
        return result


    async def count_marks(self):
        """
        select count(auto_id), mark_name, mark_id
        FROM public.main_market_data_view
        WHERE year between 2017 and 2024
        group by mark_name, mark_id;
        """
        async with self.db_client.session() as session:
            query = sa.select(
                sa.func.count(MainMarketDataView.auto_id).label('count'),
                MainMarketDataView.mark_name,
                MainMarketDataView.mark_id
            )
            query = query.group_by( MainMarketDataView.mark_name, MainMarketDataView.mark_id)
            query = query.order_by(sa.func.count(MainMarketDataView.auto_id).desc())
            records = await session.execute(query)
            return self._result_builder(records)
            
    async def count_models(self):
        """
        select count(auto_id) as count , mark_name, mark_id, model_name, model_id
        FROM public.main_market_data_view
        group by mark_name,mark_id, model_name, model_id
        order by mark_name;
        """
        async with self.db_client.session() as session:
            query = sa.select(
                sa.func.count(MainMarketDataView.auto_id).label('count'),
                MainMarketDataView.mark_name,
                MainMarketDataView.mark_id,
                MainMarketDataView.model_name,
                MainMarketDataView.model_id,
            )
            query = query.group_by(
                MainMarketDataView.mark_name, 
                MainMarketDataView.mark_id,
                MainMarketDataView.model_name,
                MainMarketDataView.model_id,
            )
            query = query.order_by(sa.func.count(MainMarketDataView.auto_id).desc())
            records = await session.execute(query)
            return self._result_builder(records)
    
    async def marks_price(self):
        """
        select avg(price)::Integer , mark_name, mark_id
        FROM public.main_market_data_view
        group by mark_name,mark_id;
        """
        async with self.db_client.session() as session:
            query = sa.select(
                sa.cast(sa.func.avg(MainMarketDataView.price), sa.Integer).label('avg_price'),
                MainMarketDataView.mark_name,
                MainMarketDataView.mark_id,
            )
            query = query.group_by(
                MainMarketDataView.mark_name, 
                MainMarketDataView.mark_id,
            )
            records = await session.execute(query)
            return self._result_builder(records)
    
    async def models_price(self):
        async with self.db_client.session() as session:
            query = sa.select(
                sa.cast(sa.func.avg(MainMarketDataView.price), sa.Integer).label('avg_price'),
                MainMarketDataView.mark_name,
                MainMarketDataView.mark_id,
                MainMarketDataView.model_name,
                MainMarketDataView.model_id,
            )
            query = query.group_by(
                MainMarketDataView.mark_name, 
                MainMarketDataView.mark_id,
                MainMarketDataView.model_name,
                MainMarketDataView.model_id,
            )
            records = await session.execute(query)
            return self._result_builder(records)
    
    async def avg_market_price(self):
        async with self.db_client.session() as session:
            query = sa.select(
                sa.cast(sa.func.avg(MainMarketDataView.price), sa.Integer).label('avg_price'),
            )
            records = await session.execute(query)
            return self._result_builder(records)


    async def count_autos(self):
        async with self.db_client.session() as session:
            query = sa.select(
                sa.func.count(MainMarketDataView.auto_id),
            )
            records = await session.execute(query)
            return self._result_builder(records)
    

    async def avg_price_by_year(self):
        """
        SELECT AVG(price)::Integer as avg_price, year
        from main_market_data_view
        group by year
        order by avg_price desc;
        """
        async with self.db_client.session() as session:
            query = sa.select(
                sa.cast(sa.func.avg(MainMarketDataView.price), sa.Integer).label('avg_price'),
                MainMarketDataView.year
            )
            query = query.group_by(
                MainMarketDataView.year 
            )
            records = await session.execute(query)
            return self._result_builder(records)
    
    async def bodystyle_count(self):
        """
        select count(auto_id), bodystyle, body_id
        FROM public.main_market_data_view
        group by body_id,bodystyle;
        """
        async with self.db_client.session() as session:
            query = sa.select(
                sa.func.count(MainMarketDataView.auto_id).label('count'),
                MainMarketDataView.bodystyle,
                MainMarketDataView.body_id
            )
            query = query.group_by(
                MainMarketDataView.bodystyle,
                MainMarketDataView.body_id
            )
            records = await session.execute(query)
            return self._result_builder(records)
    
    async def bodystyle_price(self):
        """
        select avg(price), bodystyle, body_id
        FROM public.main_market_data_view
        group by body_id,bodystyle;
        """
        async with self.db_client.session() as session:
            query = sa.select(
                sa.cast(sa.func.avg(MainMarketDataView.price), sa.Integer).label('avg_price'),
                MainMarketDataView.bodystyle,
                MainMarketDataView.body_id
            )
            query = query.group_by(
                MainMarketDataView.bodystyle,
                MainMarketDataView.body_id
            )
            records = await session.execute(query)
            return self._result_builder(records)