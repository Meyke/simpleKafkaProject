#!/bin/bash

gradle build -b ProduttoriConsumatori/SimpleKafkaProducer/build.gradle
gradle fatJar -b ProduttoriConsumatori/SimpleKafkaProducer/build.gradle
gradle copyFiles -b ProduttoriConsumatori/SimpleKafkaProducer/build.gradle

gradle build -b ProduttoriConsumatori/SimpleKafkaConsumer/build.gradle
gradle fatJar -b ProduttoriConsumatori/SimpleKafkaConsumer/build.gradle
gradle copyFiles -b ProduttoriConsumatori/SimpleKafkaConsumer/build.gradle


