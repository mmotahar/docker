FROM odoo:11
LABEL AUTHOR="Sergio Díaz <sdimar@yahoo.com>"

ENV ODOO_RC="/etc/odoo/odoo/odoo11.conf"

USER root

RUN apt-get update && apt-get -y install \
  sudo \
  python3-dev \
  build-essential \
  libssl-dev \
  libffi-dev \
  libxml2-dev \
  libxslt1-dev \
  zlib1g-dev \
  pkg-config \
  gcc \
  apt-utils \
  wget \
  nano \
  libxmlsec1-dev \
  --no-install-recommends

RUN echo "odoo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

COPY scripts/*.sh /tmp/

RUN chmod 755 /tmp/*.sh
RUN sh /tmp/changePathOdoo.sh
RUN sh /tmp/requirementsPython.sh

RUN mkdir -p /var/run/odoo && chown odoo:odoo /var/run/odoo
RUN sed -i 's/PIDFILE=\/var\/run\/${NAME}.pid/PIDFILE=\/var\/run\/odoo\/${NAME}.pid/g' /etc/init.d/odoo

RUN pip3 install setuptools --no-cache

USER odoo

ENTRYPOINT ["/entrypoint.sh"]

CMD ["odoo"]
