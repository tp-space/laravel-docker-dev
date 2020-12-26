FROM composer:latest

# Add user for laravel application
RUN addgroup -g 1000 laravel
RUN adduser -u 1000 -s /bin/bash -g laravel -G laravel -D laravel

# Create working directory
RUN mkdir -p /var/www/html

WORKDIR /var/www/html

USER laravel

