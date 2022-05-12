import os
from fastapi import FastAPI

from ibis_async_app.routers import db


app = FastAPI()
app.include_router(db.router)
