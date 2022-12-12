#!/bin/ash

if [ ! -d "/var/www/wordpress" ]
then
    cd /var/www
    wget https://wordpress.org/wordpress-6.0.3.tar.gz
    tar -xzvf wordpress-6.0.3.tar.gz
    rm wordpress-6.0.3.tar.gz
fi
exec php-fpm8 -F -R
