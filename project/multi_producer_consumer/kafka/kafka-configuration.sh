#!/bin/bash

echo "ciao"
cat $KAFKA_HOME/config/server.properties | sed -e "s/zookeeper.connect=localhost:2181/zookeeper.connect=10.11.1.71:2181/" > $KAFKA_HOME/config/temp_file

mv $KAFKA_HOME/config/temp_file $KAFKA_HOME/config/server.properties

echo "" >> $KAFKA_HOME/config/server.properties 
echo 'auto.create.topics.enable=false' >> $KAFKA_HOME/config/server.properties


echo "inizio ad avviare il broker"
# start kafka broker
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties

#echo "avanzo nella generazione dei topic"
# genero i vari topic
#$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper 10.11.1.71:2181 --replication-factor 1 --partitions 1 --topic topic1

#$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper 10.11.1.71:2181 --replication-factor 1 --partitions 2 --topic topic2

#$KAFKA_HOME/bin/kafka-topics.sh --list --zookeeper 10.11.1.71:2181

# altrimenti muore il processo in background
#sleep infinity