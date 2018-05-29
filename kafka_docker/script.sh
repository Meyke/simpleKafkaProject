# rimuove tutti i contenitori e le reti dovute alle precedenti esecuzioni di questo script
echo "########################################################"
echo "########              CLEAN DOCKER              ########"
echo "########################################################"
docker stop kafka1
docker rm kafka1
docker stop produttore1
docker rm produttore1
docker stop consumatore1
docker rm consumatore1
docker network rm kafkanet
echo "########################################################"
echo "########       SETTING UP KAFKA CONTAINER       ########"
echo "########################################################"
# crea l'immagine kafka-img
docker build -t kafka-img ./kafka/

docker network create -d bridge kafkanet
docker run --network=kafkanet --name=kafka1 kafka-img &
echo "########################################################"
echo "########     SETTING UP PRODUTTORE CONTAINER    ########"
echo "########################################################"
# soddisfa le dipendenze e compila il progetto java 
gradle build -b ProduttoriConsumatori/SimpleKafkaProducer/build.gradle -c ProduttoriConsumatori/SimpleKafkaProducer/settings.gradle
gradle fatjar -b ProduttoriConsumatori/SimpleKafkaProducer/build.gradle -c ProduttoriConsumatori/SimpleKafkaProducer/settings.gradle
# crea l'immagine produttore-img
docker build -t produttore-img ./ProduttoriConsumatori/SimpleKafkaProducer/
# crea il contenitore produttore1 a partire dall'immagine precedentemente creata
docker run --network=kafkanet --name=produttore1 produttore-img &
echo "########################################################"
echo "########     SETTING UP CONSUMATORE CONTAINER    #######"
echo "########################################################"
# soddisfa le dipendenze e compila il progetto java
gradle build -b ProduttoriConsumatori/SimpleKafkaConsumer/build.gradle -c ProduttoriConsumatori/SimpleKafkaConsumer/settings.gradle
gradle fatjar -b ProduttoriConsumatori/SimpleKafkaConsumer/build.gradle -c ProduttoriConsumatori/SimpleKafkaConsumer/settings.gradle
# crea l'immagine produttore-img 
docker build -t consumatore-img ./ProduttoriConsumatori/SimpleKafkaConsumer/
# crea il contenitore produttore1 a partire dall'immagine precedentemente creata
docker run --network=kafkanet --name=consumatore1 consumatore-img & 


