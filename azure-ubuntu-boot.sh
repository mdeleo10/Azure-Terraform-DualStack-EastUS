#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install net-tools
sudo apt install whois
sudo apt install php -y  
sudo apt-get install -y apache2
sudo apt install libapache2-mod-php8.3
sudo a2enmod php8.3
sudo systemctl reload apache2
sudo systemctl enable apache2
# Write /var/www/html/index.php file
sudo wget https://raw.githubusercontent.com/mdeleo10/WebServer/main/index.php -O /var/www/html/index.php
# End write
mv /var/www/html/index.html /var/www/html/index-old.html
