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
  dbfpy

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

# Gestión de llaves
USER root
RUN mkdir /opt/.ssh
RUN mkdir /root/.ssh
RUN chown -R odoo:odoo /opt/.ssh
RUN chmod -R 700 /opt/.ssh
RUN chmod -R 700 /root/.ssh
ADD ./keys/id_rsa_docker /opt/.ssh/id_rsa
ADD ./keys/id_rsa_docker /root/.ssh/id_rsa
RUN chown -R odoo:odoo /opt/.ssh
RUN chown -R odoo:odoo /root/.ssh
RUN chmod 400 /opt/.ssh/id_rsa
RUN chmod 400 /root/.ssh/id_rsa

# Configuración ssh para conexión a servidor de gitlab
ADD ./config /root/.ssh/config
ADD ./config /opt/.ssh/config
USER odoo
RUN ssh-agent bash -c "ssh-add /opt/.ssh/id_rsa;"

# Directorios para los repos
USER odoo
RUN mkdir /opt/repos; \
  mkdir /opt/repos/praxya; \
  mkdir /opt/repos/oca; \
  mkdir /opt/repos/cim; \
  mkdir /opt/repos/meisa; \
  mkdir /opt/repos/jvv; \
  mkdir /opt/repos/agfra; \
  mkdir /opt/repos/sysman; \
  mkdir /opt/repos/sermesa;

# Scripts para obtener todos los repos
COPY ./scripts/get_addons_oca.sh /opt/repos/oca/
COPY ./scripts/get_addons_praxya.sh /opt/repos/praxya/
COPY ./scripts/get_addons_vauxoo.sh /opt/repos/
COPY ./scripts/get_addons_cim.sh /opt/repos/cim/
COPY ./scripts/get_addons_agfra.sh /opt/repos/agfra/
COPY ./scripts/get_addons_meisa.sh /opt/repos/meisa/
COPY ./scripts/get_addons_jvv.sh /opt/repos/jvv/
COPY ./scripts/get_addons_sysman.sh /opt/repos/sysman/
COPY ./scripts/get_addons_sermesa.sh /opt/repos/sermesa/

# Permisos a los scripts
USER root
RUN chmod 700 /opt/repos/oca/get_addons_oca.sh
RUN chmod 700 /opt/repos/praxya/get_addons_praxya.sh
RUN chmod 700 /opt/repos/get_addons_vauxoo.sh
RUN chmod 700 /opt/repos/cim/get_addons_cim.sh
RUN chmod 700 /opt/repos/agfra/get_addons_agfra.sh
RUN chmod 700 /opt/repos/meisa/get_addons_meisa.sh
RUN chmod 700 /opt/repos/jvv/get_addons_jvv.sh
RUN chmod 700 /opt/repos/sysman/get_addons_sysman.sh
RUN chmod 700 /opt/repos/sermesa/get_addons_sermesa.sh

# Clone de los repos
WORKDIR /opt/repos
RUN chown -R odoo:odoo .
USER odoo
WORKDIR /opt/repos/oca
RUN ./get_addons_oca.sh
WORKDIR /opt/repos/praxya
RUN ./get_addons_praxya.sh
WORKDIR /opt/repos
RUN ./get_addons_vauxoo.sh
WORKDIR /opt/repos/cim
RUN ./get_addons_cim.sh
WORKDIR /opt/repos/agfra
RUN ./get_addons_agfra.sh
WORKDIR /opt/repos/meisa
RUN ./get_addons_meisa.sh
WORKDIR /opt/repos/jvv
RUN ./get_addons_jvv.sh
WORKDIR /opt/repos/sysman
RUN ./get_addons_sysman.sh
WORKDIR /opt/repos/sermesa
RUN ./get_addons_sermesa.sh

# Directorio para los config y bbdd
RUN mkdir /opt/config; \
  mkdir /opt/databases;
COPY ./configs/openerp-server-agfra.conf /opt/config/

# Modifico las contraseñas de root y odoo, y agrego el usuario odoo a sudoers
USER root
RUN echo 'root:admin' | chpasswd
RUN echo 'odoo:odoo' | chpasswd
RUN sudo adduser odoo sudo

# Copio el servicio para arrancar el servidor Odoo
COPY ./services/agfra_dev /etc/init.d/
RUN chmod 755 /etc/init.d/agfra_dev

# Creo el usuario odoo en PostgreSQL
# USER postgres
# RUN psql --command "CREATE USER odoo WITH SUPERUSER CREATEDB CREATEROLE INHERIT LOGIN REPLICATION PASSWORD 'odoo';"

# Inicio el servicio PostgreSQL
WORKDIR /opt
ENTRYPOINT service postgresql start && /bin/bash
