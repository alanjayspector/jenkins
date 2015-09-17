#!/usr/bin/env bash

sudo apt-get upgrade > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install -y curl 
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
cd /home/vagrant/app
npm install

