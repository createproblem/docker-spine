#!/bin/bash

set -e

# Set Env
sed "s/dh:9200/$HOST/" -i /etc/logstash/conf.d/30-es-output.conf

# Add logstash as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- logstash "$@"
fi

# Run as user "logstash" if the command is "logstash"
if [ "$1" = 'logstash' ]; then
	set -- gosu logstash "$@"
fi

exec "$@"
