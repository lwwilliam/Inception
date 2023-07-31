FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y
RUN apt-get install -y mariadb-server procps vim

# If the bind-address runs with 127.0.0.1 (localhost) address so, at that time, no one is able to connect to the MariaDB server from a different host or different remote location.
# Set to 0.0.0.0 to allow other container to connect to the mariadb container
RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

#to setup installation for mariadb only for debian bullseye mariadb
RUN mkdir -p /run/mysqld
RUN chown mysql:root /run/mysqld
COPY /tools/script.sh /

# COPY /tools/50-server.cnf /etc/mysql/mariadb.conf.d/
# RUN bash ./script.sh

# Ports for mariadb
EXPOSE 3306

#execure mysql
CMD ["bash", "/script.sh"]