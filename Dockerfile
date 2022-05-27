FROM php:8.1-fpm-alpine

RUN apk --no-cache add yaml-dev && docker-php-ext-pecl install yaml

RUN apk del --purge .build-deps