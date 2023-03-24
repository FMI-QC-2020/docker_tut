### View Docker version, Docker info, Docker Compose version

`docker version`{{execute T1}}

`docker info`{{execute T1}}

`docker-compose version`{{execute T1}}

### Run postgres

docker run --name some-postgres -p 5433:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres

docker ps 
stop container
docker ps -a
run container


### Create file runy-script.rb with content

ruby-script.rb
if ARGV.empty?
  puts 'without argument'
else 
ARGV.each do| el |
  puts "Argument: #{el}"
end
end

### Hint

use vim or echo > file

### Create Dockerfile with content

FROM ruby:3.0
COPY ruby-script.rb /ruby-script.rb
RUN chmod +x /ruby-script.rb
CMD ruby /ruby-script.rb

###


run with parameter
run without parameters




### Clone repo

`git clone https://github.com/romanenko-natali/angular_docker.git`{{execute T1}}


Wait for clone success.

### Get Local ip

`export IP=$(hostname -I | cut -d' ' -f1)`{{execute T1}}

### Pull MySQL Redis Nginx images by Docker Compose

`docker-compose up --no-start`{{execute T1}}

### Modify Docker Registry

Modify Docker Daemon Config file

```sh
cat << EOF > /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "storage-driver": "overlay2",
  "registry-mirrors": ["http://127.0.0.1:65001","https://mirror.gcr.io","https://docker-mirror.killer.sh"],
  "mtu": 1454
}
EOF
```{{execute T1}}

Restart Docker Service

`service docker restart`{{execute T1}}

### Startup MySQL Redis Nginx by Docker Compose

`docker-compose up -d `{{execute T1}}

`docker-compose ps `{{execute T1}}
