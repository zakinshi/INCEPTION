#!/bin/bash

wp core download --allow-root
wp config create --dbname="$DATABASE_NAME" --dbuser="$USER_DB_NAME" --dbpass="$USER_DB_PWD" --dbhost="$DB_HOST" --allow-root
wp core install --url="$DOMAINE_NAME" --title="$DOMAINE_NAME" --admin_user="$WP_ADMIN_NAME" --admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_ADMIN_EMAIL"  --allow-root

wp user create "$WP_USER" "$WP_EMAIL" --role=author --user_pass="$WP_PASSWORD" --allow-root

/usr/sbin/php-fpm7.4 -F