#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y mysql-server

echo '[mysqld]' >> /etc/mysql/mysql.cnf
echo 'bind-address = 0.0.0.0' >> /etc/mysql/mysql.cnf

service mysql start

mysql -u root --execute="CREATE DATABASE redmine character SET utf8;"
mysql -u root --execute="CREATE user 'redmine'@'%' IDENTIFIED BY 'redmine';"
mysql -u root --execute="GRANT ALL privileges ON redmine.* TO 'redmine'@'%';"
