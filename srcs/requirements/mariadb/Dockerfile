FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y
RUN apt-get install -y mariadb-server

EXPOSE 3306

RUN sed -i 's/bind-address = 127.0.0.1/address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN service mysql start

# LABEL version="1.0"
# LABEL description="MariaDB Server"

# HEALTHCHECK --start-period=5m \
#   CMD mariadb -e 'SELECT @@datadir;' || exit 1

CMD ["mariadbd"]
