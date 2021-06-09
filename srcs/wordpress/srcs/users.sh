#!/bin/sh
wp core is-installed --allow-root --path=/www/wordpress/
if [ $? == 1 ]; then
	wp core install --url=http://192.168.64.2:5050/ --path=/www/wordpress/ --title="21school" --admin_user="admin" --admin_password="admin" --admin_email="admin@mail.ru" --allow-root
	wp user create 1 editor@example.com --role=editor --user_pass=1 --allow-root --path=www/wordpress/
	wp user create 2 author@example.com --role=author --user_pass=2 --allow-root --path=www/wordpress/
	wp user create 3 contributor@example.com --role=contributor --user_pass=3 --allow-root --path=www/wordpress/
	wp user create 4 subscriber@example.com --role=subscriber --user_pass=4 --allow-root --path=www/wordpress/
	wp plugin delete --all --allow-root --path=www/wordpress/
	wp user session destroy admin --all --allow-root --path=/www/wordpress
else
	echo "Wordpress was already installed"
fi