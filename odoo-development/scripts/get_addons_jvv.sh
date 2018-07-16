#!/bin/sh

{
git clone git@praxyadev.ddns.net:jvv/jvv-addons.git
} || {

cd jvv-addons
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:jvv/jvv-reports.git
} || {

cd jvv-reports
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:jvv/jvv-wiki.git
} || {

cd jvv-wiki
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:jvv/jvv-contabilidad.git
} || {

cd jvv-contabilidad
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:jvv/jvv-mrp.git
} || {

cd jvv-mrp
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:jvv/jvv-product.git
} || {

cd jvv-product
git pull
cd ..
}
