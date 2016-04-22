# pptpd-with-docker
Docker image for pptpd service

Docker reference:
https://www.docker.com/

Input the user name and password in ./etc/ppp/chap-secrets with below format.
[username] * [password] *

build the docker image
docker build -t pptpd .

run the docker image
docker run --name pptpd --privileged -d -t -p 1723:1723 -p 47:47 --net=host pptpd
