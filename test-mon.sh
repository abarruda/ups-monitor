#!/bin/bash

upsd -u root -c stop
upsdrvctl -u root stop
upsdrvctl -u root start
upsd -u root
sleep 1
upsc ups@localhost