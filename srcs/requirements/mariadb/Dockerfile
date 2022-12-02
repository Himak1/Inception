FROM alpine:3.16

RUN apk upgrade ; apk add openrc mariadb mariadb-client
RUN rm -rf /var/lib/mysql ; \
    mkdir -p /var/lib/mysql /var/run/mysqld ; \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld ; \
    chmod 777 /var/run/mysqld ; \
    mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
COPY tools/docker-entrypoint.sh /usr/local/bin/
RUN docker-entrypoint.sh
# ENTRYPOINT ["docker-entrypoint.sh"]
# CMD mariadbd --user=mysql