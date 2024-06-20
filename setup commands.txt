
sudo su

#clean docker client (delete all images, containers, volumes)

docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi --force $(docker images -q) && docker volume ls -q | xargs -r docker volume rm -f


git clone https://github.com/medoston/oman-Learnnig-Website.git

cd oman-Learnnig-Website/

docker build -t oman . 

docker run -d -p 80:80 --name OM oman


cd ..

rm -r oman-Learnnig-Website
