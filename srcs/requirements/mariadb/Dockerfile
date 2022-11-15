FROM alpine:3

RUN apk upgrade
RUN apk add mariadb
RUN rm -rf /var/lib/mysql ; \
    mkdir -p /var/lib/mysql /var/run/mysqld ; \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld ; \
    chmod 777 /var/run/mysqld
CMD mariadbd --user=root
