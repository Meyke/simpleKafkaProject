#!/bin/bash

echo 'Starting application as a stack' 

# my-registry e my-swarm sono degli alias per swarm-1
DOCKER_REGISTRY=my-registry:5000
DOCKER_SWARM=tcp://my-swarm:2375

docker -H ${DOCKER_SWARM} stack deploy --compose-file docker-stack.yml kafkaProject


