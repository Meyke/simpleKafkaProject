#!/bin/bash

cat $KAFKA_HOME/config/server.properties | sed -e "s/zookeeper.connect=localhost:2181/zookeeper.connect=10.11.1.71:2181/" > $KAFKA_HOME/config/temp_file

mv $KAFKA_HOME/config/temp_file $KAFKA_HOME/config/server.properties

# start kafka broker
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties


