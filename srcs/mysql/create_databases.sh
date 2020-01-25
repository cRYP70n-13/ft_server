#!/bin/bash
service mysql start
mysql < /usr/share/phpmyadmin/sql/create_tables.sql
mysql -uroot -e "GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'pmapass';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'cRYP70N'@'localhost' IDENTIFIED BY 'cRYP70N' WITH GRANT OPTION;"

mysql -uroot -e "CREATE DATABASE wordpress;"
mysql -uroot -e "GRANT ALL ON wordpress.* TO 'cRYP70N'@'localhost' IDENTIFIED BY 'cRYP70N';"
