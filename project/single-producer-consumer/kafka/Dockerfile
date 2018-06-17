FROM ubuntu:16.04

ENV KAFKA_HOME /usr/local/kafka
ADD ./kafka-configuration.sh /scripts/kafka-configuration.sh

RUN chmod 777 /scripts/kafka-configuration.sh

# install java + others
RUN apt-get update && apt-get install -y \
	wget \
	openjdk-8-jdk

# install kafka
RUN wget http://it.apache.contactlab.it/kafka/1.1.0/kafka_2.11-1.1.0.tgz  && \
  	tar -xzf kafka_2.11-1.1.0.tgz && \
  	mv kafka_2.11-1.1.0 $KAFKA_HOME


EXPOSE 9092
CMD ["/scripts/kafka-configuration.sh"]