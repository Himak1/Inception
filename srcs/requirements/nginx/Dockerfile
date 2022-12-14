FROM alpine:3.16

RUN apk upgrade ;\
    apk add nginx ;\
    mkdir -p /www ;\
    mkdir -p /conf
COPY /conf /conf
COPY /tools/docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
