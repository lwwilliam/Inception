#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out $CERTS_ -subj "/C=MY/ST=Selangor/L=Subang Jaya/O=42KL/OU=Student/CN=william/"

nginx -g "daemon off;"
