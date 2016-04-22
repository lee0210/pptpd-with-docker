# pptpd-with-docker
Docker image for pptpd service

Docker reference:
https://www.docker.com/

Start command:
docker run --name pptpd --privileged -d -t -p 1723:1723 -p 47:47 --net=host pptpd
