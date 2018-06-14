FROM java:8
ADD /build/libs/SimpleKafkaConsumer-all.jar SimpleConsumer.jar
ENTRYPOINT ["java","-jar","SimpleConsumer.jar"]
CMD ["topic", "group"]