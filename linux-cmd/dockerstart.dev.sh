#!/bin/bash

echo "Starting Docker Compose in Development for Both Client and Server!!"

docker compose -f docker-compose.dev.yml up --build

wait

echo "Stopping all Docker Development Containers"

docker compose -f docker-compose.dev.yml down