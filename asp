//dockermaymaven app
docker build -t apoorva53535/mymaveapp:version1 .
docker ps -aq | xargs docker stop
docker run -d --name dockerserver1 -p 8085:8080 apoorva53535/mymavenapp:version1

MSbuild tool: download the Microsoft MSBuild from this link - https://www.microsoft.com/en-us/download/details.aspx?id=48159 

Nuget packet manager: Download Nuget Application from this link -  https://www.nuget.org/downloads 

/p:DeployOnBuild=true  

/p:DeployDefaultTarget=WebPublish  

/p:WebPublishMethod=FileSystem  

/p:SkipInvalidConfigurations=true  

/p:Configuration=Release  

/p:DeleteExistingFiles=True  

/p:publishUrl=c:\inetpub\wwwroot 

in 1st terminal
cd /var/run
sudo chmod 777 docker.sock

in 2nd terninal
 git clone " url of FullstackApp1.git"
cd FullStackApp1/
sudo docker-compose -f docker-compose_updated.yml up

in browser localhost:3000/   // signup
in browser localhost:8001/   // username: php_docker
                                password: password
see in php_docker  --> users

// for dockercompose php and database


version: '3'
services:
  www:

    build:
      context: .
      dockerfile: Dockerfile_Web_App
    container_name: www
    ports:
      - 3000:80
      - 443:443 # for future ssl traffic
  db:
    image: mysql:latest
    container_name: db
    environment:
      - MYSQL_DATABASE=php_docker
      - MYSQL_USER=php_docker
      - MYSQL_PASSWORD=password # this should live in a env var
      - MYSQL_ALLOW_EMPTY_PASSWORD=1 # equivalent to True
    volumes:
      - "./db:/docker-entrypoint-initdb.d" # this is how we persist a sql db even when container stops
  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    ports:
      - 8001:80
    environment:
      - PMA_HOST=db
      - PMA_PORT=3306


//docker volume
sudo docker volume create myvolume1

sudo docker volume ls

sudo docker inspect volume  myvolume

 sudo docker run --name ubuntuvol1 -it  --mount source=myvolume,target=/app  ubuntu:latest

cd app
 ls 
 
 touch file1.txt
 
 cat>>file1.txt

cat file1.tx

exit

sudo docker run --name centosvol3 -it  --mount source=myvolume,target=/app  centos:latest

cd app

ls
