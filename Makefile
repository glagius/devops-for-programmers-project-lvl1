server:
	docker-compose up

test:
	docker-compose --file docker-compose.yml run app
