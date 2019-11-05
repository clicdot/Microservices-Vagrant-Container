#!/bin/bash

echo '### Ruby ###'

echo
echo 'Update/Upgrade apt-get'
echo
sudo apt-get update
sudo apt-get upgrade
# install ruby
echo
echo 'Install Ruby'
echo
sudo apt-get purge ruby*
sudo apt-get -y install ruby-full
