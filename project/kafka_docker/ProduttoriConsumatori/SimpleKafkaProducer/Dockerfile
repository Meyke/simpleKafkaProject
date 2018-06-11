FROM java:8
ADD libs/SimpleKafkaProducer-all.jar SimpleProducer.jar
RUN apt-get update && apt-get install -y telnet
ADD wait-for-kafka.sh wait-for-kafka.sh
CMD ["./wait-for-kafka.sh","java","-jar","SimpleProducer.jar"]
