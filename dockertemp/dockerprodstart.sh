#!/bin/bash

echo "Starting Docker Container"

docker run --name my-macha-lang-cont-prod --rm -it -p 3000:3000 -p 8080:8080 my-macha-lang-image-prod