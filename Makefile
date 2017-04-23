default: build run

build:
	docker build --tag udemy-pg .

run:
	docker run -d -p 5432:5432 --name postgres udemy-pg
