#!/bin/bash
sudo apt-get update
sudo apt-get install git
sudo apt-get install nginx
sudo apt-get install mysql-server
sudo mysql_install_db
sudo apt-get install php5-fpm php5-mysql
sudo rm /etc/nginx/sites-available/default
sudo cp /vagrant/serverConfig/default /etc/nginx/sites-available/default
sudo service nginx restart
sudo apt-get install ruby-compass
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer