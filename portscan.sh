#!/usr/bin/env bash
host=192.168.0.1
for port in {1..65535}; do
	(timeout .1 bash -c "echo >/dev/tcp/$host/$port" && echo "port $port is open") 2>/dev/null
	done
	echo "Done"
