FROM ubuntu
Maintainer ......
RUN apt-get update -y && apt-get upgrade -y
CMD ["echo", "Hello World! from my first docker inage"]
