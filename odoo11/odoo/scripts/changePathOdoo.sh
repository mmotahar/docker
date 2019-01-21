#!/bin/bash
sudo sed -i -e '/CONFIG=/ s/=.*/=\/etc\/odoo\/odoo\/odoo11.conf/' /etc/init.d/odoo
sudo sed -i -e '/LOGFILE=/ s/=.*/=\/etc\/odoo\/odoo\/odoo11.log/' /etc/init.d/odoo
