#!/bin/bash
mkdir -p /var/run/mysqld 
chown -R mysql:mysql /var/run/mysqld
chmod 777 /var/run/mysqld
cat << EOF > setupbdd.sql 
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES on $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
EOF
service mysql start
mysql < setupbdd.sql
rm -rf setupbdd.sql
/usr/bin/mysqld_safe --datadir=/var/lib/mysql
