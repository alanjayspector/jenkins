#!/usr/bin/env bash

sudo apt-get upgrade > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install -y curl 
sudo apt-get install -y git 
#sudo wget -qO- https://get.docker.com/ | sh
#curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
#sudo usermod -aG docker vagrant
sudo apt-get install -y nodejs
cd /home/vagrant/app
#tear down old install
rm -rf node_modules
npm install --no-bin-links
sudo npm install -g forever
sudo echo "PORT=80" >> /etc/environment
sudo setcap cap_net_bind_service=+ep /usr/bin/nodejs
#cd /home/vagrant/deploy
#git clone https://github.com/tianon/docker-brew-ubuntu-core.git

