FROM node:lts-alpine3.19

RUN mkdir server

RUN npm install -g rollup

WORKDIR /server

COPY ./package.json ./

COPY ./package-lock.json ./

RUN npm install

COPY ./ ./

CMD [ "npm", "run", "start" ]