#!/bin/sh
#clean docker client (delete all images, containers, volumes)
sudo su - user <<eos               
docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi --force $(docker images -q) && docker volume ls -q | xargs -r docker volume rm -f              
docker system prune -a -y               
apt-get update             
eos





