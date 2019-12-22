#!/bin/bash

apt update && apt upgrade -y && apt install mc vim-nox zip unzip git wget -y

sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10
sudo sysctl vm.vfs_cache_pressure=50
sudo echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
sudo echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf

apt install python3-venv python3-pip

pip3 install --user awscli
env | grep PATH
pip3 install awscli
apt install git gcc g++ make python-dev libxml2-dev libxslt1-dev zlib1g-dev gettext curl
wget -q --no-check-certificate -O- https://bootstrap.pypa.io/3.4/get-pip.py | sudo python
pip3 install virtualenv
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt install nodejs
npm install -g sass postcss-cli autoprefixer

wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb
apt update && apt install mysql-server - y
