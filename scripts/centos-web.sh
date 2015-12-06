#!/bin/bash


# apache and tools
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html
service httpd start

# php 
yum install -y php php-cli php-common php-devel php-mysql 

# Download startet content
cd /vagrant 
sudo -u vagrant  wget -q https://raw.githubusercontent.com/aixarat/vagrant/master/files/index.php


service httpd restart

