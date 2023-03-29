### Task

1. Create in `pyton_supp/` directory python script `last_lines.py` for get `n` last lines of some files. This script must be execute with arguments <name_of_file> -lines <lines_count>.
2.  Create file `PythonDockerfile` in dir `pyton_supp` for docker image with script on python for get last n lines of file.
3.  Create image from this PythonDockerfile.
4.  Mount file test.log when running the container `docker run -v /`

docker build -t mysuperimage -f pyton_supp/PythonDockerfile .

`docker rmi <image_id>`

`docker run -it ubuntu:18.10 /bin/bash`{{execute T1}}

`ls`{{execute T1}}

`docker ps`{{execute T2}}

`mkdir /newdir`{{execute T1}}

`exit`{{execute T1}}

`docker ps`{{execute T2}}

