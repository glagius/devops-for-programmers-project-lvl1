[![Docker image](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/docker-build.yml/badge.svg)](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/docker-build.yml)
[![Hexlet-check](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/glagius/devops-for-programmers-project-lvl1/actions/workflows/hexlet-check.yml)

# Hexlet DevOps educational project.
A project to learn how docker and docker-compose work.

## Required
- docker
- docker-compose

## For develop
Build development image: `make build-development`
Create `.env` file with the necessary variables.
Use: `make compose`

## For testing production image
Build production image: `make build-production`
Use: `make test-image`