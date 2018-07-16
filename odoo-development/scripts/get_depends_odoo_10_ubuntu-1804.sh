#!/bin/sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install python-pip -y

# Librerías necesarias para ejecutar Odoo
pip install -U pip
pip install simplejson \
    lxml \
    py-dateutil \
    psycopg2 \
    psycopg2-binary \
    unittest2 \
    reportlab \
    psutil \
    requests \
    python-openid \
    pypdf \
    passlib \
    python-chart \
    vatnumber \
    cssutils \
    xlwt \
    backports.functools_lru_cache \
    pypdf2 \
    zklib \
    unidecode \
    bs4 \
    ofxparse \
    odoorpc \
    xlrd \
    pandas \
    Werkzeug \
    pyyaml \
    Mako \
    Jinja2 \
    mock
