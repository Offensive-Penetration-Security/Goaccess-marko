#!/usr/bin/bash
# 100% nu11secur1ty
sudo systemctl stop apache2.service
sudo systemctl start apache2.service
sudo apt install goaccess -y
sudo goaccess -f access.log -o /var/www/html/report.html --log-format=COMBINED
  sleep 3
sudo cp /var/log/apache2/access.log /var/www/html/
  cd /var/www/html/
google-chrome report.html
