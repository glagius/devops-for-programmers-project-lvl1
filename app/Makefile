.PHONY: test lint

setup-env:
	@test ! -f .env && cat .env.example > .env || echo 'File with environments already exist'

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