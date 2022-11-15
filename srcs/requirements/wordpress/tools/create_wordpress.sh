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
	wp core install --path=/var/www/html/wordpress/ --url=https://localhost --title=Inception --admin_user=achane-l --admin_password=poire1234 --admin_email=achane-l@student.42.fr --allow-root
fi

exec "$@"
