FROM nginx:stable-alpine

# Add user for laravel application
RUN addgroup -g 1000 laravel
RUN adduser -u 1000 -s /bin/bash -g laravel -G laravel -D laravel

# Add nginx config
ADD ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./docker/nginx/conf.d/laravel-nginx.conf /etc/nginx/conf.d/laravel-nginx.conf

# Create working directory
RUN mkdir -p /var/www/html

# Align ownership
RUN chown laravel:laravel /var/www/html


