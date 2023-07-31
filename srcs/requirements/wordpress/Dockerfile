FROM debian:buster

RUN apt-get update -y && apt upgrade -y 
RUN apt-get install -y wget vim curl
RUN apt-get install -y php-fpm php-mysql

# RUN php -v

# copy the script and config into the container
COPY /tools/script.sh /
COPY /config/wp-config.php /

CMD [ "/script.sh" ]
# CMD [ "tail", "-f", "/dev/null" ]