### Clone repository `https://github.com/romanenko-natali/angular-compose`

Move to `angular-compose` directory

Create file Dockerfile-dev in directory `api/` 

FROM node:latest

WORKDIR /usr/src/app/api

COPY package*.json ./

RUN npm install

EXPOSE 3080

CMD ["npm", "run", "dev"]

Create file Dockerfile-dev in directory `ui/` 

FROM node:latest

WORKDIR /usr/src/app/ui

COPY package*.json ./

RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

EXPOSE 4201

CMD ["npm", "start"]

Create file `docker-compose.yml`

version: '3'

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
    
      context: ./ui
      
      dockerfile: Dockerfile-dev
      
    ports:
    
      - "4201:4201"
      
    container_name: angular-ui
    
    volumes:
    
       - ./ui:/usr/src/app/ui
       
       - /usr/src/app/ui/node_modules
       
  ### Start docker compose
  
  `docker-compose up`{{execute T1}}
       
       
 We have error `angular-ui exited with code 1`.
 This angular application required node version <= 16, so we must rewrite docker file for ui part with 16 version of nodejs
 
 ### Stop docker compose

 Ctrl+C

 ### Rebuild docker compose 
 
 `docker-compose build`
 
 ### Start docker compose
 
  `docker-compose up`
       
       
 ### Check if application is started with commands
 
 
 curl for post method `curl -X POST http://localhost:4201/api/user  -H 'Content-Type: application/json' -d '{"user":{"firstName":"user One","lastName":"user One","email":"user1@gmail.com"}}'`{{execute T2}}
 
 curl for get method `curl http://localhost:4201/api/users`
 
 ### Stop docker compose
 
`docker-compose -f angular-compose/docker-compose.yml stop`{{execute T2}}

### Check if application was stopped

curl http://localhost:4201/api/users`{{execute T1}}

 
       
