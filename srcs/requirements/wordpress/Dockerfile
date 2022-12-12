FROM alpine:3.16

# Install persistent dependencies
RUN apk upgrade ; \
        # PHP addon dependencies
        apk add wget \
        tar \
        libcurl \
        libxml2 \
        openssl \
        imagemagick \
        libzip \
        # PHP8 and extensions
        php8 \
        php8-fpm \
        php8-curl \
        php8-dom \
        php8-exif \
        php8-fileinfo \
        php8-pecl-mcrypt \
        php8-pecl-imagick \
        php8-mbstring \
        php8-openssl \
        php8-xml \
        php8-zip ; \
        # Creating the directory path for wordpress
        mkdir -p /var/www
COPY tools/docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT docker-entrypoint.sh
