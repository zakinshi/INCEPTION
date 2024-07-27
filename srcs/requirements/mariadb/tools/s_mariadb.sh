#!/bin/bash

mysql_install_db

mysqld_safe &

sleep 5


mysql -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;"
mysql -e "CREATE USER IF NOT EXISTS '$USER_DB_NAME'@'%' IDENTIFIED BY '$USER_DB_PWD';"
mysql -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USER_DB_NAME'@'%';"
mysql -e "FLUSH PRIVILEGES;"


mysqladmin shutdown

mysqld_safe
