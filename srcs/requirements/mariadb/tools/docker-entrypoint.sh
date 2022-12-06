#!/bin/ash
# openrc
# touch /run/openrc/softlevel
# openrc
mariadb-install-db --user=mysql --basedir=/dbdata --datadir=/dbdata/mariadb
# rc-service mariadb start
# mariadb < set-users.sql
sed -i s/root_password/$MYSQL_ROOT_PASSWORD/ set-users.sql
sed -i s/new_user/$MYSQL_USER/ set-users.sql
sed -i s/user_password/$MYSQL_PASSWORD/ set-users.sql
exec mariadbd --user=mysql
