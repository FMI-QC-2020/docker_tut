### Clone repository ...

Create file Dockerfile-dev in directory `api/` 

FROM node:10

WORKDIR /usr/src/app/api

COPY package*.json ./

RUN npm install

EXPOSE 3080

CMD ["npm", "run", "dev"]

Create file Dockerfile-dev in directory `api/ui` 

FROM node:10

WORKDIR /usr/src/app/app-ui

COPY package*.json ./

RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

EXPOSE 4201

CMD ["npm", "start"]

version: '1'
services:
  nodejs-server:
    build:
      context: ./api
      dockerfile: Dockerfile-dev
    ports:
      - "3080:3080"
    container_name: node-api
    volumes:
       - ./api:/usr/src/app/api
       - /usr/src/app/api/node_modules
  angular-ui:
    build:
      context: ./app-ui
      dockerfile: Dockerfile-dev
    ports:
      - "4201:4201"
    container_name: angular-ui
    volumes:
       - ./app-ui:/usr/src/app/app-ui
       - /usr/src/app/app-ui/node_modules
       
