#!/bin/bash 

echo "creating directories"
mkdir /srv/conf/traefik

echo "creating files "
touch /srv/conf/traefik/acme.json
touch /srv/conf/traefik/traefik.toml
touch /srv/conf/traefik/traefik_dynamic.toml


