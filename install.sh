# (Still untested)
#!/usr/bin/env bash

## Setup script for setting up a new ubuntu machine
echo "Starting All-in-one-Script to install"

## Use root without password prompt
echo "Use root without password"
sudo su

## Update packages
echo "Update packages"
apt update

## Install Docker
apt install docker.io
apt install docker-compose

## Run protainer of management
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

## Run Wordpress with MySQL(or other services)
docker volume create wordpress-data
docker run --name mysqlwp -e MYSQL_ROOT_PASSWORD=wordpressdocker -v wordpress-data:/var/lib/mysql/ -d mysql
docker run --name wordpress --link mysqlwp:mysql -p 80:80 -d wordpress 
