import pytest
from src import DependencyManager


@pytest.mark.parameters_queries
class TestParameterersQueries:
    dpm = DependencyManager()
    dpm.setup_dependencies()
    params_q = dpm.parameters_queries

    @pytest.mark.asyncio
    async def test_model_insert(self):
        await self.params_q.insert_model(
            data={
                'category_id':1,
                'name': 'test',
                'id': 101,
                'mark_id': 6
            },
            added_by_sync=False
        )