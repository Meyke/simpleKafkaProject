FROM java:8
ADD /build/libs/SimpleKafkaFilter-all.jar SimpleFilter.jar
ENTRYPOINT ["java","-jar","SimpleFilter.jar"]
CMD ["topic", "topic2", "group",]