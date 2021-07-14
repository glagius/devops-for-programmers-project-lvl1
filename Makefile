include make-compose.mk

setup-env:
	@test ! -f .env && cat .env.example > .env || echo 'File with environments already exist'

ci: setup-env compose-test-production

clean: compose-down

setup: setup-env compose-setup

build-production: compose-build-production