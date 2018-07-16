#!/bin/sh

{
# git clone git@praxyadev.ddns.net:sermesa/sermesa-addons.git
git clone http://praxyadev.ddns.net:10100/Sermesa/sermesa-addons.git
} || {

cd sermesa-addons
git pull
cd ..
}

{
# git clone git@praxyadev.ddns.net:sermesa/redsa-web-service.git
git clone http://praxyadev.ddns.net:10100/Sermesa/redsa-web-service.git
} || {

cd redsa-web-service
git pull
cd ..
}
