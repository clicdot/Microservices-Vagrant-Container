#!/bin/bash

echo '### python 2 ###'

# install python 2
echo
echo 'Install python 2'
echo
sudo apt-get install -y python-pip
pip --version
sudo apt-get install -y virtualenv

echo '### python 3 ###'

# install python 3
echo
echo 'Install python 3'
echo
sudo apt-get install -y python3-pip
pip3 --version
sudo apt-get -y install python3-venv
