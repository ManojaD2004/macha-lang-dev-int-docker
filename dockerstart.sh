#!/bin/bash

echo "Starting Docker Compose in Production for Both Client and Server!!"

docker compose up --build

wait

echo "Stopping all Docker Production Containers"

docker compose down