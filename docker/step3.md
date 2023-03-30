### Task

1. Create `python_supp/` dirfectory.
2. Create in this directory python script `last_lines.py`. This script prints last `n` lines of any file. This script is executed with the following arguments: <name_of_file> -lines <lines_count>.
3.  Create dockerfile `PythonDockerfile` in dir `pyton_supp` which copies and runs the script.
4.  Build the image from this PythonDockerfile `docker build -t mysuperimage -f pyton_supp/PythonDockerfile .`.
5.  Mount file test.log when running the container `docker run -v...`


docker run -v /test.log:/test.log mysuperimage test.log -lines 5 

### Delete image 

`docker rmi <image_id>`


### Start container with ubuntu and connected to the container’s stdin when container started 

`docker run -it ubuntu:18.10 /bin/bash`{{execute T1}}

### Execute commanda in container:

`ls`{{execute T1}}

`docker ps`{{execute T2}}

`mkdir /newdir`{{execute T1}}

`exit`{{execute T1}}


`docker ps`{{execute T2}}

