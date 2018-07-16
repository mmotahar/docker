#!/bin/sh

{
git clone git@praxyadev.ddns.net:cim/cim-account.git
} || {

cd cim-account
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:cim/cim-reports.git
} || {

cd cim-reports
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:cim/cim-sale.git
} || {

cd cim-sale
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:cim/cim-connector.git
} || {

cd cim-connector
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:cim/cim-wiki.git
} || {

cd cim-wiki
git pull
cd ..
}
