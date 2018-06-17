# project/single-producer-consumer (versione su docker)



                                         
       Producer -----> |-- topic --| ------> Consumer                                        
                                      



Ogni elemento gira su un proprio contenitore.
Ogni contenitore viene assegnato alla stessa macchina virtuale

# Vagrant
L'ambiente è costituito da una solo ambiente su cui è installato Docker.
I nodi sono gestiti con vagrant.
La cartella di sertup dell'ambiente vagrant è ambienti/ambiente_docker.
La cartella condivisa tra tutte le macchine virtuali è ambienti/_shared e la cartella corrente (project).

Lanciare l'ambiente vagrant:
```cd ambienti/ambiente_docker
vagrant up
```
# Connessione alla macchina virtuale dev:
```
vagrant ssh docker
```

#BUILD (nell'ambiente docker):
  
Nella cartella projects:
Lo script build-all-projects.sh gestisce la build dei progetti.
Lo script clean-all-projects.sh gestisce la clean dei progetti.


# ESECUZIONE

## ZOOKEEPER:

Nella cartella projects/zookeeper:

docker network create -d bridge kafkanet

docker build -t zookeeper-img .

docker run --network=kafkanet --name=zookeeper1 zookeeper-img
  
    
## SERVER KAFKA:

Nella cartella projects/zookeeper:

docker build -t kafka-img .

docker run --network=kafkanet --name=kafka1 kafka-img

## CONSUMATORE:

Nella cartella projects/ProduttoriConsumatori
  
docker build -t consumatore-img .

docker run --network=kafkanet --name=consumatore1 consumatore-img
  
## PRODUTTORE

Nella cartella projects/ProduttoriConsumatori
  
docker build -t produttore-img .

docker run --network=kafkanet --name=produttore1 produttore-img