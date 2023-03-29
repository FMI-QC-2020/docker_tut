### Task

1. Create in `pyton_supp` directory python script `last_lines.py`. This script prints last `n` lines of any file. This script is executed with the following arguments: <name_of_file> -lines <lines_count>.
2.  Create dockerfile `PythonDockerfile` in dir `pyton_supp` which copies and runs the script.
3.  Build the image from this PythonDockerfile.
4.  Mount file test.log when running the container `docker run -v...`

docker build -t mysuperimage -f pyton_supp/PythonDockerfile .


`docker rmi <image_id>`

`docker run -it ubuntu:18.10 /bin/bash`{{execute T1}}

`ls`{{execute T1}}

`docker ps`{{execute T2}}

`mkdir /newdir`{{execute T1}}



`exit`{{execute T1}}

`docker ps`{{execute T2}}

