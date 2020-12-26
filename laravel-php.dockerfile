FROM php:7.4-fpm-alpine

# Add user for laravel application
RUN addgroup -g 1000 laravel
RUN adduser -u 1000 -s /bin/sh -g laravel -G laravel -D laravel

# Generate php.ini file
RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

# create working folder
RUN mkdir -p /var/www/html

# Set working directory
WORKDIR /var/www/html

# Align ownership
RUN chown laravel:laravel /var/www/html

USER laravel
