from __future__ import annotations

from fastapi import APIRouter, Request
import ibis

from ibis_async_app import db


router = APIRouter()


@router.get("/sqlite", tags=["db"])
async def sqlite(request: Request):
    # do some ibis process
    con = db.get_connection()
    tb = con.table("tb1")
    assert tb.columns
    return {"status": True}
