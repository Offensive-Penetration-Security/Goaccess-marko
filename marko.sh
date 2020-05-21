#!/usr/bin/bash
# 100% nu11secur1ty
sudo systemctl start apache2.service
sudo apt install goaccess -y
goaccess -f /var/log/apache2/access.log -o /var/www/html/report.html --log-format=COMBINED
  cd /var/www/html/
google-chrome report.html
