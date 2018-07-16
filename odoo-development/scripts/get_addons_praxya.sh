#!/bin/sh

{
git clone git@praxyadev.ddns.net:praxya/praxya-almacen.git
} || {

cd praxya-almacen
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-purchase.git
} || {

cd praxya-purchase
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-manufacture.git
} || {

cd praxya-manufacture
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-contabilidad.git
} || {

cd praxya-contabilidad
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-project.git
} || {

cd praxya-project
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-docker.git
} || {

cd praxya-docker
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-rrhh.git
} || {

cd praxya-rrhh
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-sale.git
} || {

cd praxya-sale
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-product.git
} || {

cd praxya-product
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-tools.git
} || {

cd praxya-tools
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-wiki.git
} || {

cd praxya-wiki
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-scripts.git
} || {

cd praxya-scripts
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/praxya-reports.git
} || {

cd praxya-reports
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/unique_vat.git
} || {

cd unique_vat
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/no_bank_account_required.git
} || {

cd no_bank_account_required
git pull
cd ..
}

{
git clone git@praxyadev.ddns.net:praxya/ansible-odoo.git
} || {

cd ansible-odoo
git pull
cd ..
}
