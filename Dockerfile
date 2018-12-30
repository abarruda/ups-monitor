FROM resin/rpi-raspbian:stretch

RUN apt-get update && apt-get upgrade --assume-yes
RUN apt-get install nut nut-client nut-server

COPY test-mon.sh .