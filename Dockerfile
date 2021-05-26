# chose the php version here
# FROM php:7.0-apache
FROM php:7.3-apache-stretch

RUN a2enmod rewrite

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN set -eux \
  && apt-get update \
  && apt-get install -y libzip-dev zlib1g-dev libpng-dev \
  && docker-php-ext-install zip \
  && docker-php-ext-install gd