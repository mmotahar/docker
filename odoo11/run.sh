#!/bin/bash

# current path
path=`pwd`
echo ProjectPath=$path > .env

# download OCA repositories
cd $path/repos
./get_oca_repos.sh
cd ..

# total permissions for odoo folder
sudo chmod 777 $path/odoo

# docker building
docker-compose build --force-rm --parallel
docker-compose up -d --remove-orphans --force-recreate

# IP containers
echo
echo Las ips de los contenedores son:
echo
docker inspect -f "{{.Name}} -> {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" odoo11
docker inspect -f "{{.Name}} -> {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" odoo11-db
echo
