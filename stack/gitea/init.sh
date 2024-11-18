#!/bin/bash
apt-get update && apt-get install apache2-utils -y 

echo "Creating directory :"
mkdir /srv/data
mkdir /srv/data/gitea/git_data 
mkdir /srv/data/gitea/git_vardata
mkdir /srv/conf/gitea
 