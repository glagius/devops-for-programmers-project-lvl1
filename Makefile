include make-compose.mk

setup-env:
	make -C app setup-env

ci: setup-env compose-test-production

clean: compose-down

setup: setup-env compose-setup

build-production: compose-build-production