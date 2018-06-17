#!/bin/bash

gradle clean -b ProduttoriConsumatori/SimpleKafkaProducer/build.gradle
gradle clean -b ProduttoriConsumatori/SimpleKafkaConsumer/build.gradle 

gradle deleteDist -b ProduttoriConsumatori/SimpleKafkaProducer/build.gradle
gradle deleteDist -b ProduttoriConsumatori/SimpleKafkaConsumer/build.gradle 

