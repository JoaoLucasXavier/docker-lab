FROM php:8.0.6-fpm

WORKDIR /var/www

RUN rm -rf /var/www/html

RUN apt-get update && \
  apt-get install libzip-dev -y && \
  docker-php-ext-install zip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
  php composer-setup.php && \
  php -r "unlink('composer-setup.php');"
RUN ./composer.phar create-project --prefer-dist laravel/laravel laravel

RUN ln -s /var/www/laravel/public/ /var/www/html

RUN chown -R www-data:www-data /var/www

EXPOSE 9000

CMD [ "php-fpm" ]
