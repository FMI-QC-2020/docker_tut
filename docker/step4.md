### 1. Clone repository 

`https://github.com/romanenko-natali/angular-compose`

### 2. Move to `angular-compose` directory

`cd angular-compose`

### 3. Create file Dockerfile-dev in directory `api/` 

`touch api/Dockerfile-dev` with content

FROM node:latest

WORKDIR /usr/src/app/api

COPY package*.json ./

RUN npm install

EXPOSE 3080

CMD ["npm", "run", "dev"]

### 4. Create file Dockerfile-dev in directory `ui/` 


FROM node:latest

WORKDIR /usr/src/app/ui

COPY package*.json ./

RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

EXPOSE 4201

CMD ["npm", "start"]

### 5. Create file `docker-compose.yml`

`touch docker-compose.yml`{{execute T1}}

<code>
version: '3'  
services:  
  nodejs-server:  
     build:  
      context: ./api
      dockerfile: 
        Dockerfile-dev
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
  </code>
  
  
<details>
<summary>Attention</summary>
  Validate your docker compose via 
  `https://codebeautify.org/yaml-validator`
</details>
  
  
       
  ### 6. From your project directory, start up your application

  `docker-compose up`{{execute T1}}
       
 We have error `angular-ui exited with code 1`.
 This angular application required node version <= 16, so we must 
 
 ### 7. Rewrite docker file for ui part with 16 version of nodejs 
 
 `vim ui/Dockerfile-dev`{{execute T1}}
 
 ### 8. Stop docker compose

 Ctrl+C or `cd angular-compose && docker-compose stop`{{execute T2}} in other terminal 

 ### 9. Rebuild docker compose 
 
 `docker-compose build`{{execute T1}}
 
 ### 10. Start application
 
  `docker-compose up`{{execute T1}}
  
 ## Switch to other terminal tab
       
       
 ### 11. Check if application is started with commands
 
 
 curl for post method 
 
 `curl -X POST http://localhost:4201/api/user  -H 'Content-Type: application/json' -d '{"user":{"firstName":"user One","lastName":"user One","email":"user1@gmail.com"}}'`{{execute T2}}
 
 curl for get method 
 
 `curl http://localhost:4201/api/users`
 
 ### 12. Stop application
 
`docker-compose -f angular-compose/docker-compose.yml stop`{{execute T3}}

### 13. Check if application was stopped

curl http://localhost:4201/api/users`{{execute T1}}

 
       
