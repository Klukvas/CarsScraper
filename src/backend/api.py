

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from .queries import ServerQueries
import redis
import json
from src.utils import Env
e = Env()

app = FastAPI()

app = FastAPI()

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],  # Replace with your React app's URL
    allow_credentials=True,
    allow_methods=["GET"],
    allow_headers=["*"],
)

q = ServerQueries()
redis = redis.StrictRedis(
    host=e._redis_host, 
    port=e.redis_port, 
    decode_responses=True
)


@app.on_event("shutdown")
async def shutdown_event():
    if redis is not None:
        redis.close()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/count_marks")
async def count_marks():
    json_records = redis.get('count_marks')
    if not json_records:
        records = await q.count_marks()
        json_records = json.dumps(records)
        redis.set('count_marks', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/count_models")
async def count_models():
    json_records = redis.get('count_models')
    if not json_records:
        records = await q.count_models()
        json_records = json.dumps(records)
        redis.set('count_models', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/marks_price")
async def marks_price():
    json_records = redis.get('marks_price')
    if not json_records:
        records = await q.marks_price()
        json_records = json.dumps(records)
        redis.set('marks_price', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/models_price")
async def models_price():
    json_records = redis.get('models_price')
    if not json_records:
        records = await q.models_price()
        json_records = json.dumps(records)
        redis.set('models_price', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/avg_market_price")
async def avg_market_price():
    json_records = redis.get('avg_market_price')
    if not json_records:
        records = await q.avg_market_price()
        json_records = json.dumps(records)
        redis.set('avg_market_price', records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/count_autos")
async def count_autos():
    json_records = redis.get('count_autos')
    if not json_records:
        records = await q.count_autos()
        json_records = json.dumps(records)
        redis.set('count_autos', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/avg_price_by_year")
async def avg_price_by_year():
    json_records = redis.get('avg_price_by_year')
    if not json_records:
        records = await q.avg_price_by_year()
        json_records = json.dumps(records)
        redis.set('avg_price_by_year', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/bodystyle_count")
async def bodystyle_count():
    json_records = redis.get('bodystyle_count')
    if not json_records:
        records = await q.bodystyle_count()
        json_records = json.dumps(records)
        redis.set('bodystyle_count', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records

@app.get("/bodystyle_price")
async def bodystyle_price():
    json_records = redis.get('bodystyle_price')
    if not json_records:
        records = await q.bodystyle_price()
        json_records = json.dumps(records)
        redis.set('bodystyle_price', json_records, ex=60*60*4)
        return records
    records = json.loads(json_records)
    return records
