import sqlalchemy as sa
from src.dataBase.models import AutoData, Marks, Models
from src.utils import DependencyManager
from sqlalchemy.orm import aliased

import asyncio



async def get_form_common_model():
    dpm = DependencyManager()
    db_client = dpm.db_client
    async with db_client.session() as session:
        q = sa.select(
            AutoData.auto_id,
            AutoData.year,
            Marks.name.label('mark_name'),
            AutoData.mark_id,
            Models.name.label('model_name'),
            AutoData.model_id,
            AutoData.USD.label('price')
        )
        q = q.outerjoin(Models, Models.id == AutoData.model_id)
        q = q.outerjoin(Marks, Marks.id == AutoData.mark_id)
        q = q.group_by(AutoData.auto_id, Marks.name, Models.name)
        print(q)
        res = await session.execute(q)
        r = res.first()
        for i in r:
            print(f"{i}")
        return r


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(get_form_common_model())