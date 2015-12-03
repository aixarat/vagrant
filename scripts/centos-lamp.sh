#!/bin/bash

yum update -y --exclude=kernel

# apache and tools
yum install -y vim git unzip screen httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html
service httpd start

# php and mysql
yum install -y php php-cli php-common php-devel php-mysql mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on
service mysqld start
mysql -u root -e "SHOW DATABASES";

# Download startet content

service httpd restart

