[![Docker image](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/docker-build.yml/badge.svg)](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/docker-build.yml)
[![Hexlet-check](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/hexlet-check.yml)

# Hexlet DevOps educational project.
A project to learn how docker and docker-compose work.

## Required
- docker
- docker-compose

## Necessary preparations
Docker compose use environments variables from `.env` file.
It can be created manually or by script (`make setup-env`), which gets all variables from `.env.example` and puts them to `.env` file, if file doesn't exist.


## Setup project
Use: `make setup`
## For develop
Use: `make compose`
## For testing production image
When you want to test image locally, check file `.strapi-updater.json` in ./app folder. If it exists - run `sudo rm ./app/strapi-updater.json`.
Build production image: `make build-production`
Use: `make ci`

## Link to docker-hub image.
https://hub.docker.com/r/glagius/devops-for-programmers-project-lvl1