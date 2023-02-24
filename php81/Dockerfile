FROM php:8.1-fpm-alpine

RUN apk add --no-cache --virtual .build-deps \
    g++ make autoconf yaml-dev libpq-dev

RUN pecl install yaml-2.2.2 \
    && pecl install redis-5.3.5 \
    && docker-php-ext-enable yaml redis

RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql