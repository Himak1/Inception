FROM alpine:3.16

RUN apk upgrade ;\
    apk add nginx ;\
    mkdir -p /www ;\
    mkdir -p /www/wordpress ;\
    mkdir -p /conf ;\
    cp /etc/nginx/conf
COPY /conf/config.conf /conf/
CMD ["nginx", "-c", "/conf/config.conf", "-g", "daemon off;"]
