FROM resin/rpi-raspbian:stretch

RUN apt-get update && apt-get upgrade --assume-yes
RUN apt-get install nut nut-client nut-server 
RUN apt-get install nginx nut-cgi fcgiwrap

COPY conf/hosts.conf /etc/nut/hosts.conf
RUN chmod 644 /etc/nut/hosts.conf
RUN chown www-data:www-data /usr/lib/cgi-bin/nut/*.cgi
COPY nginx/nginx.conf /etc/nginx/sites-enabled/default

COPY test-mon.sh .
COPY exec.sh .

#fcgiwrap -s unix:/var/run/fcgiwrap.socket

CMD /exec.sh