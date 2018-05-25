# simpleKafkaProject (ver. base)
                    
Produttore ------- |Kafka| ---------- Consumatore

Ogni elemento gira su un proprio contenitore


BUILD (da automatizzare):

gradle build 

gradle fatjar


## SERVER ZOOKEEPER:

docker build -t zookeeper-img .

docker network create -d bridge kafkanet

docker run --network=kafkanet --name=zookeeper1 zookeeper-img


## SERVER KAFKA:

docker build -t kafka-img .

docker run --network=kafkanet --name=kafka1 kafka-img


## PRODUTTORE:

docker build -t produttore-img .

docker run --network=kafkanet --name=produttore1 produttore-img


## CONSUMATORE:

docker build -t consumatore-img .

docker run --network=kafkanet --name=consumatore1 consumatore-img

