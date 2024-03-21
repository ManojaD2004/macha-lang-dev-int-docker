@echo off
echo Starting Docker Container

docker run --name my-macha-lang-cont-dev --rm -it -p 3000:3000 -p 8080:8080 -v ".\client:/home/macha-lang/client" -v /home/macha-lang/client/node_modules -v ".\server:/home/macha-lang/server" -v /home/macha-lang/server/node_modules my-macha-lang-image-dev
