#!/bin/bash

echo '### Node ###'

echo
sudo apt-get install curl
# install Node
echo
echo 'Install Node'
echo
cd /tmp
curl -sL https://deb.nodesource.com/setup_11.x | sudo bash -
sudo apt-get update
sudo apt-get install -y nodejs
# install serverless
echo
echo 'Install serverless'
echo
sudo npm install -g serverless n pm2
echo
echo 'Install Docker Compose Generator'
echo
sudo npm install -g @clicdot/docker-composer-generator@latest