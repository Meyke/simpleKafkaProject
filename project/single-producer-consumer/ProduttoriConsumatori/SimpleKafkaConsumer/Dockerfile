FROM java:8
ADD libs/SimpleKafkaConsumer-all.jar SimpleConsumer.jar
ENTRYPOINT ["java","-jar","SimpleConsumer.jar"]
CMD [ "topic", "palloncino" ]