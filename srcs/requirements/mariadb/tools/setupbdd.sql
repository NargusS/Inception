CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'achane-l'@'%' IDENTIFIED BY 'poire1234';
GRANT ALL PRIVILEGES on wordpress.* TO 'achane-l'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'banane1234';
