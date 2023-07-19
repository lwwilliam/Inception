#!/bin/bash

wget http://wordpress.org/latest.tar.gz

tar xfz latest.tar.gz

mv wordpress/* ./

rm -f latest.tar.gz

# rm index.html