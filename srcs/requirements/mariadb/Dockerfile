FROM alpine:3.16

RUN apk upgrade
RUN apk add mariadb
RUN rm -rf /var/lib/mysql ; \
    mkdir -p /var/lib/mysql /var/run/mysqld ; \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld ; \
    chmod 777 /var/run/mysqld
RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
CMD mariadbd --user=mysql