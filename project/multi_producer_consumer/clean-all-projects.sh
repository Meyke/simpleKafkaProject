#!/bin/bash

gradle clean -b ProduttoriConsumatoriFiltri/SimpleKafkaProducer/build.gradle
gradle clean -b ProduttoriConsumatoriFiltri/SimpleKafkaConsumer/build.gradle 
gradle clean -b ProduttoriConsumatoriFiltri/SimpleKafkaFilter/build.gradle 



gradle deleteDist -b ProduttoriConsumatoriFiltri/SimpleKafkaProducer/build.gradle
gradle deleteDist -b ProduttoriConsumatoriFiltri/SimpleKafkaConsumer/build.gradle 
gradle deleteDist -b ProduttoriConsumatoriFiltri/SimpleKafkaFilter/build.gradle 

