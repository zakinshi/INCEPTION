#!/bin/bash

mysql_install_db

mysqld_safe &

sleep 5


mysql -e "
    CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;
    CREATE USER IF NOT EXISTS '$USER_DB_NAME'@'%' IDENTIFIED BY '$USER_DB_PWD';
    GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USER_DB_NAME'@'%';
    FLUSH PRIVILEGES;
"

mysqladmin shutdown

mysqld_safe
