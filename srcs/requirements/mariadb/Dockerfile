FROM alpine:latest

RUN apk upgrade
RUN apk add mariadb
RUN mysql_install_db --user=mysql
CMD mariadbd --user=root
#CMD mariadb -h localhost -P 3306 --protocol=tcp 
#CMD mariadb --defaults-file=/conf db
