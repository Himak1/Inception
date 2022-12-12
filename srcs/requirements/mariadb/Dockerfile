FROM alpine:3.16

RUN apk upgrade ; apk add openrc mariadb mariadb-client
RUN rm -rf /var/lib/mysql ; \
    mkdir -p /var/lib/mysql /var/run/mysqld ; \
    mkdir -p /var/run/mysqld ; \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld ; \
    chmod 777 /var/run/mysqld
COPY tools/docker-entrypoint.sh /usr/local/bin/
COPY tools/set-users.sql /
ENTRYPOINT ["docker-entrypoint.sh"]
