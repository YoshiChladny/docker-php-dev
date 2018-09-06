FROM php:fpm-alpine

RUN docker-php-ext-install pdo_mysql 

RUN apk add --no-cache $PHPIZE_DEPS \
	&& pecl install xdebug-2.6.0beta1 \
	&& docker-php-ext-enable xdebug

CMD ["php-fpm"]

EXPOSE 9000
