include make-compose.mk
.PHONY: test lint

setup-env:
	@test ! -f .env && cat .env.example > .env || echo 'File with environments already exist'

ci: setup-env compose-test-production

clean: compose-down

setup: setup-env compose-setup

build-production: compose-build-production

# Run server in watch-mode
server-watch:
	npm run develop

# Run server without watch mode
server:
	npm start

test:
	npx jest tests/root.test.js

lint:
	npx eslint .