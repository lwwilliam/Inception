#!/bin/bash

mysqld start

mysqld -e "CREATE DATABASE $MYSQL_DATABASE;"
mysqld -e "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysqld -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'localhost';"
mysqld -e "FLUSH PRIVILEGES;"
mysqld -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"

mysqld