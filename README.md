[![Docker image](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/docker-build.yml/badge.svg)](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/docker-build.yml)
[![Hexlet-check](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/hexlet-check.yml)

# Hexlet DevOps educational project.
A project to learn how docker and docker-compose work.

## Required
- docker
- docker-compose

## Necessary preparations
Environments variables takes from `.env` file.
It can be created manually or by script (`make check-env`), which gets all variables from `.env.example` and puts them to `.env` file, if file doesn't exist.

## For develop
Use: `make development`

## For production
Use: `make production`
## For testing production image
Build production image: `make build-production`
Use: `make test-image`