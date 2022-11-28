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
        # Downloading WordPress
        mkdir -p /usr/share/webapps/ ; \
        cd /usr/share/webapps/ ; \
        wget https://wordpress.org/wordpress-6.0.3.tar.gz ; \
        tar -xzvf wordpress-6.0.3.tar.gz ; \
        rm wordpress-6.0.3.tar.gz
