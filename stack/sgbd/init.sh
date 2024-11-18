#!/bin/bash 

echo "creating directories"
mkdir /srv/data/mysql
mkdir /srv/data/adminer

docker network create databases