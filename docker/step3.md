### Clone repo

`git clone https://github.com/romanenko-natali/angular_docker.git`{{execute T1}}

create file  PythonDockerfile in dir pyton_supp for  docker image with script on python for get last n lines of file qpp.log

docker build -t mysuperimage -f pyton_supp/PythonDockerfile .

`docker rmi <image_id>`

`docker run -it ubuntu:18.10 /bin/bash`{{execute T1}}

`ls`{{execute T1}}

`docker ps`{{execute T2}}

`mkdir /newdir`{{execute T1}}

`exit`{{execute T1}}

`docker ps`{{execute T2}}

