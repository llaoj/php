FROM php:8.1-fpm-alpine

RUN apk add --no-cache --virtual .build-deps \
    g++ make autoconf yaml-dev

RUN pecl channel-update pecl.php.net
RUN pecl install yaml-2.2.2 && docker-php-ext-enable yaml

RUN apk del --purge .build-deps