#!/bin/bash

cat $KAFKA_HOME/config/server.properties | sed -e "s/zookeeper.connect=localhost:2181/zookeeper.connect=zookeeper1:2181/" > $KAFKA_HOME/config/temp_file

mv $KAFKA_HOME/config/temp_file $KAFKA_HOME/config/server.properties

# start kafka broker
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties

# crate a topic named "topic" with a single partition and only one replica
$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic topic


