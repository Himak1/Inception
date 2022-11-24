FROM alpine:3.16


# Install persistent dependencies
RUN apk upgrade
RUN apk add --no-cache  ca-certificates \
                        curl \
		                tar \
		                xz \
                        openssl

# Install WordPress build tools

RUN apk add build-essential \
            autconf \
            libtool \
            bison\
            re2c \
            pkg-config \
            git
RUN git clone -b PHP-7.4 https://github.com/php/php-src.git
