FROM alpine:3

RUN apk upgrade
RUN apk add nginx
RUN mkdir -p /conf
CMD ["nginx", "-c", "/conf/nginx_conf", "-g", "daemon off;"]
