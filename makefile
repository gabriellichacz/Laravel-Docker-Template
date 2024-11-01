# Define variables
APP_NAME = cms-app
DOCKER_COMPOSE = docker-compose -f deploy/docker-compose.yml

# Define targets
.PHONY: build up down migrate seed bash

# Build the Docker images
build:
	$(DOCKER_COMPOSE) build

# Start the containers
up:
	$(DOCKER_COMPOSE) up -d

# Stop and remove the containers
down:
	$(DOCKER_COMPOSE) down

# Run migrations
migrate:
	$(DOCKER_COMPOSE) exec app php artisan migrate

# Open a bash shell in the app container
bash:
	$(DOCKER_COMPOSE) exec app bash