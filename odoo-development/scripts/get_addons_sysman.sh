#!/bin/sh

{
git clone git@praxyadev.ddns.net:sysman/sysman-client.git
} || {

cd sysman-client
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:sysman/sysman-reports.git
} || {

cd sysman-reports
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:sysman/wiki.git
} || {

cd wiki
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:sysman/rest.git
} || {

cd rest
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:sysman/sysman-modulos-extra.git
} || {

cd sysman-modulos-extra
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:sysman/sysman-scripts.git
} || {

cd sysman-scripts
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:sysman/intrastat_report.git
} || {

cd intrastat_report
git pull
cd ..
}
