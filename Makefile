
runserver:
	uvicorn ibis_async_app.main:app --reload

recreate-db-sqlite:
	rm -f db.sqlite
	sqlite3 db.sqlite < sql/create.sql
