#!/usr/bin/bash
# 100% nu11secur1ty
sudo systemctl stop apache2.service
sudo systemctl start apache2.service
sudo apt install goaccess -y
cp /var/log/apache2/access.log /var/www/html/
goaccess -f access.log -o /var/www/html/report.html --log-format=COMBINED
  cd /var/www/html/
google-chrome report.html
