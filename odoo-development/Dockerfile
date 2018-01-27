FROM ubuntu:16.04

MAINTAINER Sergio Díaz <sergiodm.1989@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
  software-properties-common\
  apt-transport-https\
  nano\
  sudo\
  vim\
  git
RUN cd /opt/
RUN git clone https://github.com/odoo/odoo.git -b 8.0
