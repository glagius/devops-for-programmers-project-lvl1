.PHONY: test lint

ci: check-env
	docker-compose -f docker-compose.yml up --abort-on-container-exit

clean:
	docker-compose down

compose:
	docker-compose up --abort-on-container-exit

build-production:
	docker-compose -f docker-compose.yml build app

build-development:
	docker-compose build app

development: check-env install build-development compose

production: check-env build-production compose

install:
	npm install

# Run server in watch-mode
develop:
	npm run develop

# Run server without watch mode
server:
	npm start

test:
	npx jest tests/root.test.js

lint:
	npx eslint .

check-env:
	test ! -f .env && cat .env.example > .env || echo "File with environments already exist"