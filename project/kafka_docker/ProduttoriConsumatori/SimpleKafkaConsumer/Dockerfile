FROM java:8
RUN apt-get update && apt-get install -y telnet
ADD libs/SimpleKafkaConsumer-all.jar SimpleConsumer.jar
ADD wait-for-kafka.sh wait-for-kafka.sh
CMD ["./wait-for-kafka.sh", "java","-jar","SimpleConsumer.jar"]
