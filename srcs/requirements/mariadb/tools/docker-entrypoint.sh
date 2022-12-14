#!/bin/ash
if [ ! -d "/var/lib/mysql/mysql" ]
then
    mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
    sed -i s/root_password/$MYSQL_ROOT_PASSWORD/ set-users.sql
    sed -i s/new_user/$MYSQL_USER/ set-users.sql
    sed -i s/user_password/$MYSQL_PASSWORD/ set-users.sql
fi
exec mariadbd --user=mysql < set-users.sql
