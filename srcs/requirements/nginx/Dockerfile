FROM debian:bullseye

#get update; update; install nginx; install openssl for tls certificate

# Transport Layer Security (TLS) encrypts data sent over the Internet to ensure 
# that eavesdroppers and hackers are unable to see what you transmit which is particularly 
# useful for private and sensitive information such as passwords, credit card numbers, and personal correspondence.
RUN apt-get update -y && apt upgrade -y && apt-get install -y nginx && apt install openssl -y

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MY/ST=Selangor/L=Subang Jaya/O=42KL/OU=Student/CN=william/"
COPY /tools/script.sh /

#copy the niginx config to the container config directory
COPY /conf/default /etc/nginx/sites-available/default

#the include mime.types is very important for the webpage to know the css file to be displayes properly
COPY /conf/nginx.conf /etc/nginx/

#port 433 is for tls 1.3
EXPOSE 443
# EXPOSE 80

CMD ["/script.sh"]