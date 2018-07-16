#!/bin/sh

{
git clone git@praxyadev.ddns.net:meisa/meisa-addons.git
} || {

cd meisa-addons
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:meisa/meisa.git
} || {

cd meisa
git pull
cd ..
}
