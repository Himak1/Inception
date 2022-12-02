#!/bin/ash
openrc
touch /run/openrc/softlevel
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
service mariadb start
