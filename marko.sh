#!/usr/bin/bash
apt install goaccess -y
goaccess -f /var/log/apache2/access.log -o /var/www/html/report.html --log-format=COMBINED
  cd /var/www/html/
google-chrome report.html
