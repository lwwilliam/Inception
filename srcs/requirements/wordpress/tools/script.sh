#!/bin/bash

wget http://wordpress.org/latest.tar.gz

tar xfz latest.tar.gz

mv wordpress/* ./

rm -f latest.tar.gz

mv /wp-config.php /var/www/html/wp-config.php

wget https://www.php.net/distributions/php-8.2.8.tar.gz

tar -xvf php-8.2.8.tar.gz

cd php-8.2.8

./configure --prefix=/usr/local/php8.2.8 --with-pdo-mysql --with-zlib --enable-mbstring --enable-fpm

tail -f /dev/null

# rm index.html