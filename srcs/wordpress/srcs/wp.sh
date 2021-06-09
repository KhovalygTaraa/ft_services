#!/bin/sh

# new user for security
adduser -D -g 'www' www

# create directories
mkdir /run/nginx
mkdir /www

# nginx config
rm /etc/nginx/nginx.conf
rm /etc/nginx/conf.d/default.conf
cp nginx.conf /etc/nginx/conf.d/default.conf
mv nginx.conf /etc/nginx/nginx.conf

# necessary roots for user
chown -R www:www /usr/lib/nginx
chown -R www:www /www

# move necessary files to our directories
mv online.html /www
mv 404.html /www
mv supervisord.conf /etc/supervisord.conf

# wp
rm latest.tar.gz
mv wordpress /www/wordpress
mv wp-config.php /www/wordpress/
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
chmod 777 users.sh
mv users.sh www/

su -c "/www/users.sh"
/usr/bin/supervisord -c /etc/supervisord.conf