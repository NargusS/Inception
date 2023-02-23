#!/bin/sh

if [ -f ./wordpress/wp-config.php ]
then
	echo "wordpress already downloaded"
else
	wget https://wordpress.org/latest.tar.gz
	tar -xzvf latest.tar.gz
	rm -rf latest.tar.gz

	rm -rf /etc/php/7.3/fpm/pool.d/www.conf
	mv ./www.conf /etc/php/7.3/fpm/pool.d/

	mv /var/www/wp-config.php /var/www/html/wordpress;
	sed -i "s/USERNAME/$WORDPRESS_USER_LOGIN/" /var/www/html/wordpress/wp-config.php
	sed -i "s/PASSWD/$WORDPRESS_USER_PASSWORD/" /var/www/html/wordpress/wp-config.php
	sed -i "s/DATABASE_NAME/$WORDPRESS_DB_NAME/" /var/www/html/wordpress/wp-config.php
	sed -i "s/DATABASE_HOST/$WORDPRESS_DB_HOST/" /var/www/html/wordpress/wp-config.php
	wp core install --path=/var/www/html/wordpress/ --url=https://localhost --title=Inception --admin_user=$WORDPRESS_USER_LOGIN --admin_password=$WORDPRESS_USER_PASSWORD --admin_email=$WORDPRESS_USER_EMAIL --skip-email  --allow-root
fi

exec "$@"
