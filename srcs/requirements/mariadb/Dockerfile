FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server mariadb-client

COPY ./tools/s_mariadb.sh .
RUN chmod +x s_mariadb.sh

# RUN     mkdir -p /var/run/mysqld && chown -R mysql /var/run/mysqld && chmod -R 777 /var/run/mysqld

RUN sed -i "s|bind-address            = 127.0.0.1|bind-address            = 0.0.0.0|g" /etc/mysql/mariadb.conf.d/50-server.cnf

CMD [ "./s_mariadb.sh" ]