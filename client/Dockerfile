FROM node:lts-alpine3.19

RUN apk add --no-cache libc6-compat

RUN npm install -g npm@latest

RUN mkdir frontend-prod

WORKDIR /frontend-prod

COPY ./package.json ./

COPY ./package-lock.json ./

RUN npm install

RUN npm run build

CMD [ "/bin/sh", "-c", "npm run start" ]