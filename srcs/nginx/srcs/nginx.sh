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
chown -R www:www /etc/
chmod 777 -R /etc/
chown -R www:www /www

# move necessary files to our directories
mv online.html /www
mv 404.html /www
mv sshd_config etc/ssh/sshd_config
mv supervisord.conf /etc/supervisord.conf

# create ssl key && ssl certificate for https
openssl req -x509 -days 365 -nodes \
-newkey rsa:2048 \
-keyout /etc/ssl/nginx.key \
-out /etc/ssl/nginx.crt \
-subj "/C=RU/ST=Moscow/L=Moscow/O=21/OU=swquinc/CN=localhost"

# ssh
echo "root:root" | chpasswd
echo "user = root pass = root"
ssh-keygen -A
/usr/bin/supervisord -c /etc/supervisord.conf