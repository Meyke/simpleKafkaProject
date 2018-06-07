#!/bin/bash

# DOCKER_REGISTRY=localhost:5000
# my-registry e my-swarm sono degli alias per swarm-1
DOCKER_REGISTRY=my-registry:5000
DOCKER_SWARM=tcp://my-swarm:2375

docker build --rm -t ${DOCKER_REGISTRY}/zookeeper-img ./zookeeper
docker build --rm -t ${DOCKER_REGISTRY}/kafka-img ./kafka
docker build --rm -t ${DOCKER_REGISTRY}/topic-img ./generatoreTopic
docker build --rm -t ${DOCKER_REGISTRY}/produttore-img ./ProduttoriConsumatori/SimpleKafkaProducer
docker build --rm -t ${DOCKER_REGISTRY}/consumatore-img ./ProduttoriConsumatori/SimpleKafkaConsumer

docker push ${DOCKER_REGISTRY}/zookeeper-img
docker push ${DOCKER_REGISTRY}/kafka-img
docker push ${DOCKER_REGISTRY}/produttore-img
docker push ${DOCKER_REGISTRY}/consumatore-img
docker push ${DOCKER_REGISTRY}/topic-img





