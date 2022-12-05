#!/bin/ash
openrc
touch /run/openrc/softlevel
openrc
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
rc-service mariadb start
mariadb < set-users.sql
