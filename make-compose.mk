compose-setup:
	docker-compose run app npm install

compose-down:
	docker-compose down -v || true

compose-build:
	docker-compose build

compose-build-production:
	docker-compose -f docker-compose.yml build app

compose-bash:
	docker-compose run app bash

compose-test-production:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

compose:
	docker-compose up --abort-on-container-exit