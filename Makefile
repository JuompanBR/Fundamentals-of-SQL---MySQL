PROJECT_NAME=tutorial_on_sql

up:
	docker-compose --project-name $(PROJECT_NAME) up -d

root: 
	docker-compose --project-name $(PROJECT_NAME) exec -it -u root $$(docker-compose --project-name $(PROJECT_NAME) ps -q mysql) /bin/bash

build:
	docker-compose --project-name $(PROJECT_NAME) build

restart: build up

stop:
	docker-composer --project-name $(PROJECT_NAME) stop