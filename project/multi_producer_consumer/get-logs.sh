#!/bin/bash


while [[ $(docker service ls | grep "$1 *replicated *$2/$2") == "" ]]
do
	>&2 echo "Waiting for $1 to startup $2 replicas - sleeping"
	sleep 1
done
echo "$1 started! "
sleep 10
docker service logs $1 >> $3

