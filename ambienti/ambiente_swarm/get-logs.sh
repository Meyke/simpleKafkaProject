#!/bin/bash


while [[ $(vagrant ssh swarm-1 -c "docker service ls" | grep "$1 *replicated *$2/$2") == "" ]]
do
	>&2 echo "Waiting for $1 to startup $2 replicas - sleeping"
	sleep 1
done
echo "consumer $1 started! "
sleep 30
vagrant ssh swarm-1 -c "docker service logs $1" >> $3

