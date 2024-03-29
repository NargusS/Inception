#!/bin/bash

# Check if the directory /var/run/mysql exists
if [ -d "/var/run/mysql" ]; then
    # If it exists, create /var/run/mysqld, set owner to mysql:mysql, and set permissions to 770
    mkdir -p /var/run/mysqld
    chown -R mysql:mysql /var/run/mysqld
    chmod 770 /var/run/mysqld
fi

# Check if the SQL script exists and is readable
if [ ! -r "setupbdd.sql" ]; then
    # If it does not exist or is not readable, create a new one with SQL commands to create a database, user, and set root password
    cat << END > setupbdd.sql 
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES on $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
FLUSH PRIVILEGES;
END
    # Start the MariaDB service
    service mysql start
    # Execute the SQL script using the mysql command
    mysql < setupbdd.sql
    # Change the root password to $MYSQL_ROOT_PASSWORD
fi
# Start the MariaDB daemon with the data directory set to /var/lib/mysql
/usr/bin/mysqld_safe --datadir=/var/lib/mysql
