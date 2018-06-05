# simpleKafkaProject (multiple-producers-consumers)
                    
Ogni elemento gira su un proprio contenitore


BUILD (da automatizzare):

fare prima la build del produttore e del consumatore come segue:

gradle build 

gradle fatjar

gradle copyLibJarFiles (copia i jar delle librerie dentro la cartella libraries per
la build del filtro)

fare la build del fitro come segue:

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

