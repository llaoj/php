FROM php:8.1-fpm-alpine

RUN pecl install yaml-2.2.2 \
    && docker-php-ext-enable yaml