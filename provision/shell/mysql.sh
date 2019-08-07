#!/bin/bash

echo '### mysql ###'

# install ngrok
echo
echo 'Install mysql'
echo
sudo /etc/init.d/mysql stop
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables &
sudo pkill -STOP terminal
mysql -uroot
use mysql;

update user set authentication_string=PASSWORD("root") where User='root';

flush privileges;

quit

sudo /etc/init.d/mysql stop

sudo /etc/init.d/mysql start