### 1. Create file `ruby-script.rb` with content

if ARGV.empty?

&nbsp;&nbsp;  puts 'without argument'
  
else

&nbsp;&nbsp; ARGV.each do| el |

&nbsp;&nbsp; &nbsp;&nbsp;   puts "Argument: #{el}"
  
&nbsp;&nbsp; end

end

#### Hint

use `vim ruby-script.rb` or `echo 'content' > ruby-script.rb`

### 2. Create Dockerfile with content

<details>
<summary>FROM ruby:3.0</summary>
This instruction will set the base image for the Dockerfile, which means that every instruction that follows applies to this base image
</details>



 <details>
<summary>COPY ruby-script.rb /ruby-script.rb</summary>
The COPY instruction copies a folder from your local machine to your Docker image.
  </details>


  
  <details>
<summary>RUN chmod +x /ruby-script.rb</summary>
  This instruction runs commands
  </details>


  
   <details>
<summary>CMD ruby /ruby-script.rb</summary>
  The CMD instruction sets a default command, which will be executed when you run the Docker image without specifying a command
  </details>

### 3. Build docker image with name `arguments`

`docker build . --tag arguments`{{execute T1}}

### 4. View all local images

`docker images`{{execute T1}}

### 5. Run docker container using image `arguments` without parameters

`docker run arguments`{{execute T1}}

### 6. Try to run docker container using image `arguments` with parameters

`docker run arguments some arguments`{{execute T1}}

It won't work, because we should pass command line parameters as arguments to our script executed when container started. 
  
  ### 7. Change Dockerfile and replace last line of file with code  


  
   <details>
<summary>ENTRYPOINT ["ruby", "/ruby-script.rb"]</summary>
  An ENTRYPOINT allows you to configure a container that will run as an executable.
  ENTRYPOINT instructions are not ignored but instead are appended as command line parameters by treating those as arguments of the command.
  </details>

CMD  [] 
  
  ### 8. Rebuild image
  
  `docker build . --tag arguments`
  
  ### 9. Run docker container using image `arguments` with parameters

`docker run arguments some arguments`{{execute T1}}
  
  ### 10. Remove container and appropriate image
  
  `docker rm <container_name or container_ID>` and `docker rmi arguments`
  

