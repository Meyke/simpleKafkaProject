FROM ubuntu:16.04

ENV ZOOKEEPER_HOME /usr/local/zookeeper
ADD ./zookeeper_configuration.sh /scripts/zookeeper_configuration.sh

RUN chmod 777 /scripts/zookeeper_configuration.sh

# install java + others
RUN apt-get update && apt-get install -y \
	wget \
	openjdk-8-jdk

# install kafka
RUN wget http://it.apache.contactlab.it/kafka/1.1.0/kafka_2.11-1.1.0.tgz  && \
  	tar -xzf kafka_2.11-1.1.0.tgz && \
  	mv kafka_2.11-1.1.0 $ZOOKEEPER_HOME


EXPOSE 2181
CMD ["/scripts/zookeeper_configuration.sh"]