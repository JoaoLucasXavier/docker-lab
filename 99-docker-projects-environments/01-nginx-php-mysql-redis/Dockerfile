# PHP image with nginx support
FROM php:8.0.3-fpm-alpine3.13

# apk: Linux alpine package manager
RUN apk add --no-cache openssl bash mysql-client nodejs npm

# PHP extensions install
RUN docker-php-ext-install pdo pdo_mysql bcmath

WORKDIR /var/www

RUN rm -rf /var/www/html
RUN ln -s public html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Provide port 9000 for nginx to send requests to php fpm
EXPOSE 9000

# php-fpm: Main process that the container will execute. If we don't have an 'ENTRYPOINT' in the container, it will be executed and finalized.
ENTRYPOINT [ "php-fpm" ]
