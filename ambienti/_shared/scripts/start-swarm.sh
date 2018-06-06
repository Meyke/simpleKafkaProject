#!/bin/bash

# da eseguire sul nodo swarm-1 
# richiede che su ciascun nodo dello swarm sia abilitato l'accesso remoto 

echo "Creating swarm on swarm-1" 

docker swarm init --advertise-addr 10.11.1.71

SWARM_TOKEN=$(docker swarm join-token -q worker)
SWARM_MASTER=$(docker info --format "{{.Swarm.NodeAddr}}")

echo "Swarm master: ${SWARM_MASTER}"
echo "Swarm token: ${SWARM_TOKEN}"

echo "Adding swarm-2 and swarm-3" 

docker --host 10.11.1.72:2375 swarm join --token ${SWARM_TOKEN} ${SWARM_MASTER}:2377
docker --host 10.11.1.73:2375 swarm join --token ${SWARM_TOKEN} ${SWARM_MASTER}:2377

# If you need to access the Docker daemon remotely, you need to enable the tcp Socket. 
# Beware that the default setup provides un-encrypted and un-authenticated direct access to the Docker daemon - and should be secured 
# either using the built in HTTPS encrypted socket, or by putting a secure web proxy in front of it. 
# You can listen on port 2375 on all network interfaces with -H tcp://0.0.0.0:2375, or on a particular network interface using 
# its IP address: -H tcp://192.168.59.103:2375. It is conventional to use port 2375 for un-encrypted, and port 2376 for encrypted 
# communication with the daemon.