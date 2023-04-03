### 1. View Docker version, Docker info, Docker Compose version

`docker version`{{execute T1}}

`docker info`{{execute T1}}

`docker-compose version`{{execute T1}}

### 2. Run postgres container with name `some-postgres` and expose port 5433 (the default postgresql port 5432) in "detached" mode. Password for user postgres shoud be set via environment variable `POSTGRES_PASSWORD` with value `mysecretpassword`

`docker run --name some-postgres -p 5433:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres`{{execute T1}}

### 3. View all runing containers

`docker ps`{{execute T1}}

### 4. Stop the particular container

`docker stop <container_name or container_ID>` 

It is not nesseccary to type full container id, you can type only unique first part of container id of all container ids 

### 5. View all containers

`docker ps -a`{{execute T1}}

### 6. Start exited container

`docker start <container_name or container_ID>`

### 7. View all running containers

`docker ps`{{execute T1}}

### 8. Stop and remove the particular container

`docker stop <container_name or container_ID>` 

`docker rm <container_name or container_ID>` 







