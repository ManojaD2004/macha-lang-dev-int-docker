@echo off

echo Starting Docker Compose in Production for Both Client and Server!!

docker-compose up --build

echo Stopping all Docker Production Containers

docker-compose down
