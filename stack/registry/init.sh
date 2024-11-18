#!/bin/bash
apt-get update && apt-get install apache2-utils -y 

echo "Creating directory :"
mkdir /srv/data/registry
mkdir /srv/conf/registry


echo "generating registry passwork "
htpasswd -B -c /srv/conf/registry/htpasswd admin