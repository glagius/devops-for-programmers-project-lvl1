.PHONY: test lint

test-image:
	NODOS_DB_HOSTNAME=db NODOS_DB_USERNAME=postgres NODOS_DB_PASSWORD=postgres docker-compose -f docker-compose.yml up --abort-on-container-exit

clean:
	docker-compose down

server:
	nodos server -h 0.0.0.0

compose: install
	docker-compose up --abort-on-container-exit

test:
	npm -s test

lint:
	npx eslint .

install:
	npm install

build-production:
	docker-compose -f docker-compose.yml build app

build-development:
	docker-compose build app