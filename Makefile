develop:
	docker-compose --file docker-compose.yml run app

production:
	docker-compose --file docker-compose.yml run production

clear:
	docker-compose down

server:
	nodos server -h 0.0.0.0

compose:
	docker-compose up -d

test:
	npm -s test
