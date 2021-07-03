test-image:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

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

develop: install build-dev compose

production: build-prod compose

build-prod:
	docker build -f Dockerfile.production -t glagius/devops-for-programmers-project-lvl1 .

build-dev:
	docker build -f Dockerfile -t glagius/devops-for-programmers-project-lvl1 .
