#!/bin/sh

{
# git clone git@praxyadev.ddns.net:agfra/agfra.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfra.git
} || {

cd agfra
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:agfra/agfra-reports.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfrareports.git
} || {

cd agfra-reports
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:agfra/agfra-wiki.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfra-wiki.git
} || {

cd agfra-wiki
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:agfra/agfra-contabilidad.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfra-contabilidad.git
} || {

cd agfra-contabilidad
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:agfra/agfra-rrhh.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfra-rrhh.git
} || {

cd agfra-rrhh
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:agfra/agfra-scripts.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfra-scripts.git
} || {

cd agfra-scripts
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:agfra/agfra-plm.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfra-plm.git
} || {

cd agfra-plm
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:agfra/agfra-host-vars.git
git clone http://praxyadev.ddns.net:10100/Agfra/agfra-host-vars.git
} || {

cd agfra-host-vars
git pull
cd ..
}
