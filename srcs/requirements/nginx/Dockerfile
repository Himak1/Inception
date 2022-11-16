FROM alpine:3

RUN apk upgrade
RUN apk add nginx
CMD ["nginx", "-g", "daemon off;", "-c", "/conf-dir/conf-file"]
