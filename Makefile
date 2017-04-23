HOST = localhost
USER = postgres

default: run provision

run:
	docker run -d -p 5432:5432 --name postgres postgres

provision:
	./wait_for_conn.sh
	psql -h $(HOST) -U $(USER) -c "CREATE DATABASE dvdrental;"
	pg_restore -h $(HOST) -U $(USER) -d dvdrental dvdrental.tar
