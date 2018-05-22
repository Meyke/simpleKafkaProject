FROM ubuntu:16.04

ADD /build/libs/SimpleKafkaConsumer.jar SimpleConsumer.jar

# install java + others
RUN apt-get update && apt-get install -y openjdk-8-jdk

CMD ["-jar", "SimpleConsumer.jar"]
