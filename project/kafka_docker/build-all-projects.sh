#!/bin/bash

gradle build -b ProduttoriConsumatoriFiltri/SimpleKafkaProducer/build.gradle
gradle fatJar -b ProduttoriConsumatoriFiltri/SimpleKafkaProducer/build.gradle
gradle copyFiles -b ProduttoriConsumatoriFiltri/SimpleKafkaProducer/build.gradle
gradle copyLibJarFiles -b ProduttoriConsumatoriFiltri/SimpleKafkaProducer/build.gradle

gradle build -b ProduttoriConsumatoriFiltri/SimpleKafkaConsumer/build.gradle
gradle fatJar -b ProduttoriConsumatoriFiltri/SimpleKafkaConsumer/build.gradle
gradle copyFiles -b ProduttoriConsumatoriFiltri/SimpleKafkaConsumer/build.gradle
gradle copyLibJarFiles -b ProduttoriConsumatoriFiltri/SimpleKafkaConsumer/build.gradle

gradle build -b ProduttoriConsumatoriFiltri/SimpleKafkaFilter/build.gradle
gradle fatJar -b ProduttoriConsumatoriFiltri/SimpleKafkaFilter/build.gradle
gradle copyFiles -b ProduttoriConsumatoriFiltri/SimpleKafkaFilter/build.gradle


