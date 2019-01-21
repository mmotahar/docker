#!/bin/bash
##### bajo los modulos
./getModules.sh

# variables
path=`pwd`
result=$path
echo ProjectPath=$result > .env

### permiso de escritura en la carpeta odoo
sudo chmod 777 $result/odoo

#### #genero docker
docker-compose build --force-rm --parallel
docker-compose up -d --remove-orphans --force-recreate

### ip's contenedores
echo
echo Las ips de los contenedores son:
echo
docker inspect -f "{{.Name}} -> {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" odoo11
docker inspect -f "{{.Name}} -> {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" odoo11-db
echo
