FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y 
RUN apt-get install -y wget
RUN apt-get install -y php-fpm

# RUN php -v

COPY /tools/script.sh /
COPY /tools/wp-config.php /

CMD [ "/script.sh" ]
# CMD [ "tail", "-f", "/dev/null" ]