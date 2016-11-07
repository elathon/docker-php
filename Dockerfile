FROM php:7.0-apache

RUN a2enmod rewrite
RUN a2ensite wordpress
RUN /etc/init.d/apache2 restart
