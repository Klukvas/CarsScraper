

from fastapi import FastAPI

import sqlalchemy as sa
from .queries import ServerQueries


app = FastAPI()

q = ServerQueries()

@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/count_marks")
async def count_marks():
    records = await q.count_marks()
    return records

@app.get("/count_models")
async def count_models():
    records = await q.count_models()
    return records