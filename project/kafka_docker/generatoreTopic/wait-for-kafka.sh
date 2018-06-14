#!/bin/bash
# wait-for-kafka.sh

set -e

cmd="$@"
while [[ $(echo "interrupt" | telnet 10.11.1.73 9092 2>&1 | grep "Connection refused" -c) == *1 ]]
do
	>&2 echo "Waiting for kafka to startup - sleeping"
	sleep 1
done
echo "kafka started! running"
exec $cmd

