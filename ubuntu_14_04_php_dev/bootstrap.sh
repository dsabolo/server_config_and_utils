#!/bin/bash
sudo apt-get update
sudo apt-get install git
sudo apt-get install drupal7
sudo apt-get install php5-curl
sudo apt-get install drush
sudo apt-get install ruby-compass
sudo apt-get install nodejs
sudo apt-get install npm
cd /etc/apache2/mods-enabled
sudo ln -s /etc/apache2/mods-available/rewrite.load ./
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

