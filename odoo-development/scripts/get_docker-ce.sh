#!/bin/sh

# docker-ce installation
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    -y

# docker-ce stable for ubuntu 16.04
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# at day 13/05/2018 stable version is not avilable yet for ubuntu 18.04
# docker-ce edge for ubuntu 18.04
# deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic edge
# docker-ce nightly for ubuntu 18.04
# deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic nightly

sudo apt-get update
sudo apt-get install docker-ce

# add your user to the docker group
sudo groupadd docker
sudo usermod -aG docker $USER

# docker-compose installation
pip install docker-compose
