#!/bin/bash

set -e

cmd="$@"
while [[ $(echo "interrupt" | telnet 10.11.1.71 2181 2>&1 | grep "Connection refused" -c) -ge 1 ]]
do
	>&2 echo "Waiting for zookeeper to startup - sleeping"
	sleep 1
done
echo "kafka started! running"
exec $cmd


#set -e

#cmd="$@"
#while [[ $(echo "interrupt" | telnet localhost 2181 2>&1 | grep "Connection refused" -c) == *1 ]]
#do
#	>&2 echo "Waiting for zookeeper to startup - sleeping"
#	sleep 1
#done
#echo "kafka started! running"
#exec $cmd