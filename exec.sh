upsdrvctl -u root start
upsd -u root
sleep 1

fcgiwrap -s unix:/var/run/fcgiwrap.socket &
sleep 1
chown www-data:www-data /var/run/fcgiwrap.socket
nginx -g 'daemon off;'