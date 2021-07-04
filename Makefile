.PHONY: test lint

test-image:
	NODOS_DB_USERNAME=postgres NODOS_DB_PASSWORD=postgres docker-compose -f docker-compose.yml up --abort-on-container-exit

clean:
	docker-compose down

server:
	nodos server -h 0.0.0.0

compose:
	docker-compose up

test:
	npm -s test

lint:
	npx eslint .

install:
	npm install
