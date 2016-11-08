FROM php:7.0-apache

COPY conf/php/php.ini /usr/local/etc/php

RUN apt-get update && apt-get install -y libmcrypt-dev libcurl4-openssl-dev libfreetype6-dev libgd-dev
RUN docker-php-ext-install pdo pdo_mysql mysqli mcrypt curl gd

RUN a2enmod rewrite
RUN /etc/init.d/apache2 restart
