FROM alpine:latest

RUN apk upgrade
RUN apk add mariadb mariadb-client
RUN mariadb setup
RUN mariadb start
CMD mariadb --defaults-file=/conf db
