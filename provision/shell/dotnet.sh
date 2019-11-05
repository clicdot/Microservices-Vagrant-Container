#!/bin/bash

echo '### dotnet core ###'

# install ngrok
echo
echo 'Install dotnet core'
echo
cd /tmp

wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo add-apt-repository universe
sudo apt-get -y install apt-transport-https
sudo apt-get update
sudo apt-get -y install dotnet-sdk-2.2
