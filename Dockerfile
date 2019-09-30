 
FROM docker:latest

LABEL Maintainer="Zona Budi InScaled.com"
# Install packages
RUN apk add --no-cache --update php7 \
    php7-fpm \
    php7-pdo \
    php7-sqlite3 \
    php7-pdo_sqlite \
    php7-json \
    php7-openssl \
    php7-curl \
    php7-zlib \
    php7-xml \
    php7-phar \
    php7-intl \
    php7-dom \
    php7-xmlreader \
    php7-ctype \
    php7-session \
    php7-mbstring \
    php7-bcmath \
    php7-gd \
    php7-xdebug \
    php7-tokenizer \
    curl \
    wget \
    openssl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
