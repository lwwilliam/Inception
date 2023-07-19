FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y 
RUN apt install -y php-fpm libapache2-mod-php php-mysql
RUN apt-get install wget

RUN php -v

COPY /tools/script.sh /
COPY /tools/wp-config.php /

CMD [ "/script.sh" ]