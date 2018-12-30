#!/bin/bash

set -x

docker run \
	-ti \
	--rm \
	--name ups-mon \
	--privileged \
	-v "$(pwd)/conf/ups.conf:/etc/nut/ups.conf" \
	-v "$(pwd)/conf/upsd.conf:/etc/nut/upsd.conf" \
	-v "$(pwd)/conf/upsd.users:/etc/nut/upsd.users" \
	-v "$(pwd)/conf/nut.conf:/etc/nut/nut.conf" \
	-v "$(pwd)/test-mon.sh:/test-mon.sh" \
	ups-mon:latest