.PHONY: test lint

test-image: check-env
	docker-compose -f docker-compose.yml up --abort-on-container-exit

clean:
	docker-compose down

server:
	npm start

compose:
	docker-compose up --abort-on-container-exit

test:
	npm -s test

lint:
	npx eslint .

check-env:
	test ! -f .env && cat .env.example > .env || echo "File with environments already exist"

install:
	npm install

build-production:
	docker-compose -f docker-compose.yml build app

build-development:
	docker-compose build app

development: check-env install build-development compose

production: check-env build-production compose
