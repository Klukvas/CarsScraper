

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from .queries import ServerQueries


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

@app.get("/marks_price")
async def marks_price():
    records = await q.marks_price()
    return records

@app.get("/models_price")
async def models_price():
    records = await q.models_price()
    return records

@app.get("/avg_market_price")
async def avg_market_price():
    records = await q.avg_market_price()
    return records

@app.get("/count_autos")
async def count_autos():
    records = await q.count_autos()
    return records

@app.get("/avg_price_by_year")
async def avg_price_by_year():
    records = await q.avg_price_by_year()
    return records

@app.get("/bodystyle_count")
async def bodystyle_count():
    records = await q.bodystyle_count()
    return records

@app.get("/bodystyle_price")
async def bodystyle_price():
    records = await q.bodystyle_price()
    return records