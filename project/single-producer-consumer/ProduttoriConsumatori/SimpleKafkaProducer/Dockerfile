FROM java:8
ADD libs/SimpleKafkaProducer-all.jar SimpleProducer.jar
ENTRYPOINT ["java","-jar","SimpleProducer.jar"]
CMD [ "topic" ]