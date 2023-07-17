FROM debian:bullseye

#get update; update; install nginx; install openssl for tls certificate

# Transport Layer Security (TLS) encrypts data sent over the Internet to ensure 
# that eavesdroppers and hackers are unable to see what you transmit which is particularly 
# useful for private and sensitive information such as passwords, credit card numbers, and personal correspondence.
RUN apt-get update -y && apt upgrade -y && apt-get install -y nginx && apt install openssl -y

# RUN rm /etc/nginx/sites-enabled/default

#copy the niginx config to the container config directory
# COPY /conf/nginx.conf /etc/nginx/sites-available/default

#port 433 is for tls 1.3
EXPOSE 80
EXPOSE 443

# When daemon mode is enabled, the Nginx process runs in the background and detaches 
# from the terminal. When daemon mode is disabled, the Nginx process runs in the 
# foreground and stays connected to the terminal.
CMD ["nginx", "-g", "daemon off;"]