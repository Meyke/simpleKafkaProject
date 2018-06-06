#!/bin/bash

# start zookeeper
$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties &

# start kafka broker
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties

# crate a topic named "topic" with a single partition and only one replica
$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic topic


