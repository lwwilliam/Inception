#!/bin/bash

# sed -i -r "s/cert_path/$CERTS_/1" /etc/nginx/sites-available/default

#to generate a ssl certificate for webpage
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out $CERTS_ -subj "/C=MY/ST=Selangor/L=Subang Jaya/O=42KL/OU=Student/CN=william/"

# When daemon mode is enabled, the Nginx process runs in the background and detaches 
# from the terminal. When daemon mode is disabled, the Nginx process runs in the 
# foreground and stays connected to the terminal.
nginx -g "daemon off;"
