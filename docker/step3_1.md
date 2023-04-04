
### 1. Start container with ubuntu 18.10 image  and connected to the container’s stdin when container started 

`docker run -it ubuntu:18.10 /bin/bash`{{execute T1}}

### 2. Create file and view all files in the current directory of container:

`touch file1.txt && ls`{{execute T1}}

### 3. View running containers in other terminal

`docker ps`{{execute T2}}

### 4. Create directory in container and exit from it:

`mkdir /newdir`{{execute T1}}

`exit`{{execute T1}}

### 5. View running containers

`docker ps`{{execute T2}}

### 6. Run the container once again: 

'docker run -it ubuntu:18.10 ls`{{execute T1}}

<details>
<summary>Info</summary>
Notice that the file and directory are gone. This is because each time use the run command against an image, it creates a new container from the image. Any changes made to a container based on an image are not automatically saved back to the image.
This is know as immutability. This is on of the key principles of containers, they are immutable. Once built, it’s unchangeable, and if you want to make changes, you will get a new image as a result.
</details>

### 7. Run NGINX container and view all running containers

`docker container run -p 80:80 -d --rm --name nginx nginx`{{execute T1}}

` docker container ps`{{execute T1}}

### 8. Look at the logs of this container

`docker container logs nginx`{{execute T1}} or `docker container logs -f nginx`


### 9. Challenge

Delete all the running containers and containers in the environment.

