### Create file `ruby-script.rb` with content

if ARGV.empty?

&nbsp;&nbsp;  puts 'without argument'
  
else

&nbsp;&nbsp; ARGV.each do| el |

&nbsp;&nbsp; &nbsp;&nbsp;   puts "Argument: #{el}"
  
&nbsp;&nbsp; end

end`

#### Hint

use `vim ruby-script.rb` or `echo 'content' > ruby-script.rb`

### Create Dockerfile with content

`FROM ruby:3.0

COPY ruby-script.rb /ruby-script.rb

RUN chmod +x /ruby-script.rb

CMD ruby /ruby-script.rb`

### Build docker image from current directory with name `arguments`

`docker build . --tag arguments`{{execute T1}}

### View all local images

`docker images`{{execute T1}}

### Run docker image with name `arguments` without parameters

`docker run arguments`{{execute T1}}

### Run docker image with name `arguments` with parameters

`docker run arguments some arguments`{{execute T1}}

