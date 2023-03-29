### View Docker version, Docker info, Docker Compose version

`docker version`{{execute T1}}

`docker info`{{execute T1}}

`docker-compose version`{{execute T1}}

### Run postgres image in container with name `postgres` with expose port 5433 for default postgresql port 5432.
Password for user postgres shoud be set as environment variable `POSTGRES_PASSWORD` with value `mysecretpassword`. When postgresql started it will be connected to database `postgres`

`docker run --name some-postgres -p 5433:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres`{execute T1}}

### View all runing containers

`docker ps`{execute T1}}

### Stop container

use command `docker stop <container_name or container_ID>` When you want to use container_id it doesn't nessecary type full id, you can type only unique chain of characters over all container ids 

### View all containers

`docker ps -a`{execute T1}}

### Run exited container

`run container <container_name or container_ID>`

### View all running containers


