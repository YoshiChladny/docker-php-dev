FROM php:7-apache

LABEL Docker php environment

WORKDIR /usr/app

COPY . /usr/app
COPY vhost.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /usr/app && a2enmod rewrite

EXPOSE 80