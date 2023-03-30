### Clone repository `https://github.com/romanenko-natali/angular-compose`

Move to `angular-compose` directory

Create file Dockerfile-dev in directory `api/` 

FROM node:10

WORKDIR /usr/src/app/api

COPY package*.json ./

RUN npm install

EXPOSE 3080

CMD ["npm", "run", "dev"]

Create file Dockerfile-dev in directory `ui/` 

FROM node:10

WORKDIR /usr/src/app/ui

COPY package*.json ./

RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

EXPOSE 4201

CMD ["npm", "start"]

Create file `docker-compose.yml`

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
    
      context: ./ui
      
      dockerfile: Dockerfile-dev
      
    ports:
    
      - "4201:4201"
      
    container_name: angular-ui
    
    volumes:
    
       - ./ui:/usr/src/app/ui
       
       - /usr/src/app/ui/node_modules
       
 Check if application is started with command
 
 curl with post
 
 curl with get
 
 ### Stop docker compose
 
`docker-compose stop`{{execute T2}}

### Check if application was stop

 curl with get

 
       
