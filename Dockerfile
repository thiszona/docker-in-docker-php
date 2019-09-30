 
FROM docker:latest

LABEL Maintainer="Zona Budi InScaled.com"
# Install packages
RUN apk add --no-cache --update php7 \
    php7-sqlite3 \
    php7-pdo_sqlite \
    php7-json \
    php7-openssl \
    php7-curl \
    php7-xml \
    php7-phar \
    php7-mbstring \
    curl \
    openssl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 