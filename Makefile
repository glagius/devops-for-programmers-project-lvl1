test-image:
	docker-compose -f docker-compose.test.yml up --abort-on-container-exit

clean:
	docker-compose down

server:
	nodos server -h 0.0.0.0

compose:
	docker-compose up --abort-on-container-exit

test:
	npm -s test

install:
	npm install

develop: install build-dev compose

production: build-prod compose

build-prod:
	docker build -f Dockerfile.production -t glagius/devops-for-programmers-project-lvl1 .

build-dev:
	docker build -f Dockerfile -t glagius/devops-for-programmers-project-lvl1 .
