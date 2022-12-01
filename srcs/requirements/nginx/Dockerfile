FROM alpine:3.16

RUN apk upgrade ;\
    apk add nginx ;\
    mkdir -p /webfiles ;\
    mkdir -p /conf
COPY /conf/nginx_conf /conf
CMD ["nginx", "-c", "/conf/nginx_conf", "-g", "daemon off;"]
