#!/bin/sh
/etc/init.d/mysql start
mysql -u groot -e "source /usr/sbin/banktable.sql"
service apache2 restart
echo "phpvulnbank is up .. You can access http://localhost:8090/phpvulnbank/login.php"

/bin/bash