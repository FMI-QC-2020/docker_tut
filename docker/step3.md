### Clone repo

`git clone https://github.com/romanenko-natali/angular_docker.git`{{execute T1}}

create file  DockerPython in dir /pyton_supp for  docker image with script on python for get last n lines of file qpp.log


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
