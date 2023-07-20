#!/bin/bash

wget http://wordpress.org/latest.tar.gz

tar xfz latest.tar.gz

mv wordpress/* ./

rm -f latest.tar.gz

mv /wp-config.php /var/www/html/wp-config.php

tail -f /dev/null

# rm index.html