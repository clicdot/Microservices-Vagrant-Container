#!/bin/bash

echo '### ngrok ###'

cd /tmp

sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip

sudo unzip ngrok-stable-linux-amd64.zip

# install ngrok
echo
echo 'Install ngrok'
echo
sudo mv ngrok /usr/local/bin
# sudo chmod 0777 /opt/ngrok/ngrok
