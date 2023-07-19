FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y
RUN apt-get install -y mariadb-server

RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
COPY /tools/script.sh /

# COPY /tools/50-server.cnf /etc/mysql/mariadb.conf.d/
# RUN bash ./script.sh

EXPOSE 3306

#execure mysql
CMD ["/script.sh"]