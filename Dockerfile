 
FROM docker:latest

LABEL Maintainer="Zona Budi InScaled.com"
# Install packages
RUN apk add --update --upgrade bash git curl openssl

RUN apk add php7 \
    php7-json \
    php7-phar \
    php7-iconv \
    php7-openssl \
    php7-zlib \
    php7-mbstring \
    php7-zip \
    php7-pdo \
    php7-sqlite3 \
    php7-pdo_sqlite \
    php7-memcached \
    php7-iconv \
    php7-dom \
    php7-ctype \
    php7-tokenizer \
    php7-xmlwriter \
    php7-xml \
    php7-fpm

RUN wget https://phar.phpunit.de/phpunit.phar && \
    chmod +x phpunit.phar && \
    mv phpunit.phar /usr/local/bin/phpunit

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 