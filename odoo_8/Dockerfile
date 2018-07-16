# Docker de Odoo 8 para usar con docker-compose y PostgreSQL
FROM ubuntu:16.04
LABEL maintainer="Sergio Díaz <sergiodm.1989@gmail.com>"

RUN apt-get update && apt-get install \
  software-properties-common \
  wget \
  -y

RUN add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt xenial-pgdg main" -y; \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
    apt-key add -

# Dependencias de Odoo y paquetes varios
RUN apt-get update && apt-get install \
  net-tools \
  git \
  xauth \
  python-pip \
  python-cups \
  python-jinja2 \
  python-unicodecsv \
  python-psycopg2 \
  python-simplejson \
  python-lxml \
  python-imaging \
  python-yaml \
  python-reportlab \
  python-mako \
  python-werkzeug \
  python-dateutil \
  python-unittest2 \
  python-mock \
  python-openid \
  python-docutils \
  python-feedparser \
  python-psutil \
  python-pydot \
  python-vatnumber \
  python-vobject \
  python-xlwt \
  python-ldap \
  python-requests \
  python-decorator \
  python-passlib \
  python-gevent \
  locales \
  postgresql-9.5 \
  python-webdav \
  python-gdata \
  xfonts-75dpi \
  python-apt \
  xfonts-base \
  python-pyparsing \
  xfonts-utils \
  python-dev \
  python-libxslt1 \
  python-geoip \
  python-pyinotify \
  python-tz \
  python-pychart \
  python-openssl \
  python-egenix-mxdatetime \
  python-pypdf \
  python-babel \
  python-zsi \
  python-pypdf2 \
  node-clean-css \
  node-less \
  nano \
  sudo \
  -y

# Librerías necesarias para ciertos repositorios
RUN pip install -U pip
RUN pip install \
  openupgradelib \
  odoorpc \
  unidecode \
  zeep \
  pandas \
  psycogreen \
  xlrd \
  ofxparse \
  cssutils \
  twilio \
  zklib \
  pyzk \
  backports.functools_lru_cache \
  bokeh \
  dbfpy \
  ipdb

# Usuario odoo
RUN mkdir /var/log/odoo; mkdir /var/lib/odoo;
RUN useradd --home /opt --shell /bin/bash odoo
RUN chown -R odoo:odoo /opt; chown -R odoo:odoo /var/lib/odoo; \
  chown -R odoo:odoo /var/log/odoo;

# Odoo -v 8
USER odoo
WORKDIR /opt/
RUN git clone https://github.com/odoo/odoo.git -b 8.0

# Paquete wkhtmltopdf
RUN mkdir /opt/utilities
WORKDIR /opt/utilities
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
USER root
RUN dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb

# Directorio para los config y bbdd
RUN mkdir /opt/config; \
  mkdir /opt/databases;
COPY ./configs/openerp-server-agfra.conf /opt/config/

# Modifico las contraseñas de root y odoo, y agrego el usuario odoo a sudoers
USER root
RUN echo 'root:admin' | chpasswd
RUN echo 'odoo:odoo' | chpasswd
RUN sudo adduser odoo sudo
WORKDIR /opt/
