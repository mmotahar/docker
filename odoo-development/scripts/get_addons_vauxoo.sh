#!/bin/sh

{
git clone -b 8.0 https://github.com/Vauxoo/addons-vauxoo.git
} || {

cd addons-vauxoo
git pull
cd ..
}
