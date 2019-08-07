#!/bin/bash

echo '### Zend Server ###'

echo
echo 'Get Zend Server Package'
echo
cd /pkgs/ZendServer
sudo ./install_zs.sh 7.3 ngnix --automatic


