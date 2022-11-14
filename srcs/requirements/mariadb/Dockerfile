FROM debian:buster

# COPY tools/setupbdd.sql ./

RUN	apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/setupbdd.sql ./

RUN service mysql start && mysql < setupbdd.sql && rm -rf setupbdd.sql
# RUN apt-get update && apt-get -y install mariadb-server && rm -rf /var/lib/apt/lists/* && service mysql start && mysql < setupbdd.sql && rm -rf setupbdd.sql
	# && mkdir -p /var/run/mysqld \
	# && chown -R mysql:mysql /var/run/mysqld \
	# && chmod 777 /var/run/mysqld

CMD ["/usr/bin/mysqld_safe"]