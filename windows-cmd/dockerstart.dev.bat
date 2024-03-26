@echo off

echo Starting Docker Compose in Development for Both Client and Server!!

rem Redirecting "n" to the script
docker-compose -f docker-compose.dev.yml up --build

echo Stopping all Docker Development Containers

docker-compose -f docker-compose.dev.yml down
