#!/bin/bash

echo "Building Docker Image"

docker build -f ./Dockerfile.prod -t my-macha-lang-image-prod ./