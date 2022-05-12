
run-server:
	uvicorn ibis_async_app.main:app --reload

recreate-db-sqlite:
	rm -f db.sqlite
	sqlite3 db.sqlite < sql/create.sql

.ONESHELL:
run-tests:
	echo "" > /tmp/ibis-async.log
	cd tests/scripts
	./test_endpoint.sh & ./test_endpoint.sh ./test_endpoint.sh
