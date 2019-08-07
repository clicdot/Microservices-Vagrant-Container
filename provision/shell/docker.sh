#!/bin/bash

echo '### Docker ###'

echo
echo 'Update/Upgrade apt-get'
echo
sudo apt-get update
sudo apt-get upgrade

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

apt-cache policy docker-ce

# install docker
echo
echo 'Install Docker'
echo
sudo apt-get purge docker*
sudo apt-get install -y docker-ce

sudo usermod -aG docker vagrant

su - vagrant

echo
echo 'Install Docker Compose'
echo
sudo apt-get install -y docker-compose

echo
echo 'Install Docker Sync'
echo
sudo gem install docker-sync
