FROM ubuntu:16.04

MAINTAINER Sergio Díaz <sergiodm.1989@gmail.com>

RUN apt-get update && apt-get install \
  software-properties-common \
  wget \
  -y

#  Agrego el repositorio de postgresql a los paquetes de apt
RUN add-apt-repository \
  "deb http://apt.postgresql.org/pub/repos/apt xenial-pgdg main" -y; \
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  apt-key add -

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
  postgresql-client-9.6 \
  python-pypdf2 \
  node-clean-css \
  node-less \
  -y

#  Paquete wkhtmltopdf
RUN mkdir /opt/utilities;
WORKDIR /opt/utilities
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
RUN dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb

WORKDIR /opt/
RUN git clone https://github.com/OCA/OCB.git -b 8.0

#  TODO: crear usuario odoo y cambiar propietario a la carpeta OCB
