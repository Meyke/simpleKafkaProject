#!/bin/bash


#$KAFKA_HOME/bin/kafka-topics.sh --zookeeper 10.11.1.71:2181 --delete --topic topic1
#$KAFKA_HOME/bin/kafka-topics.sh --zookeeper 10.11.1.71:2181 --delete --topic topic2


# crate a topic named "topic" with a single partition and only one replica
$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper 10.11.1.71:2181 --replication-factor 1 --partitions 1 --topic topic1

$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper 10.11.1.71:2181 --replication-factor 1 --partitions 2 --topic topic2

$KAFKA_HOME/bin/kafka-topics.sh --list --zookeeper 10.11.1.71:2181


