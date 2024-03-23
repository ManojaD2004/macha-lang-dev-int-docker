#!/bin/bash

echo "Starting Docker Compose in Production for Both Client and Server!!"

emptystr=$(docker image ls -q)

if [ $emptystr="" ];
    then
        echo "Images No Created!"
        docker compose up --build
    else
        echo "Images Used!"
        docker compose up
fi

wait

echo "Stopping all Docker Production Containers"

docker compose down