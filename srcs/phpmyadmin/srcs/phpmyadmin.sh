#!/bin/sh

# new user for security
adduser -D -g 'www' www

# create directories
mkdir -p /run/nginx
mkdir /run/php
mkdir /www
mkdir /www/tmp

# phpmyadmin
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages /www/phpmyadmin
mv config.inc.php /www/phpmyadmin

# nginx
rm /etc/nginx/nginx.conf
rm /etc/nginx/conf.d/default.conf
cp nginx.conf /etc/nginx/conf.d/default.conf
mv nginx.conf /etc/nginx/nginx.conf

# necessary roots for user
chown -R www:www /usr/lib/nginx
chown -R www:www /etc/
chmod 777 /www/tmp
chmod 775 /www/phpmyadmin/config.inc.php

# move necessary files to our directories
mv online.html /www
mv 404.html /www
mv supervisord.conf /etc/supervisord.conf
/usr/bin/supervisord -c /etc/supervisord.conf