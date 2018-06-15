FROM java:8
ADD libs/SimpleKafkaFilter-all.jar SimpleFilter.jar
RUN apt-get update && apt-get install -y telnet
ADD wait-for-kafka.sh wait-for-kafka.sh
CMD ["./wait-for-kafka.sh", "java","-jar","SimpleFilter.jar"]