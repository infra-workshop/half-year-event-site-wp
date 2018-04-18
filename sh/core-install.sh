#!/bin/sh
cd /var/www/html
wp core download --allow-root --locale=ja --path=wordpress
cd wordpress
wp config create --allow-root --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_ROOT_PASSWORD --dbhost=$MYSQL_PORT_3306_TCP_ADDR --dbprefix=wp_
wp core install --allow-root --url=$WP_SITEURL --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL
