#!/bin/bash

echo '### Puppet ###'

echo
echo 'Update/Upgrade apt-get'
echo
sudo apt-get update
sudo apt-get upgrade
# install puppet
echo
echo 'Install Puppet'
echo
sudo apt-get purge puppet*
sudo apt-get -y install puppet
