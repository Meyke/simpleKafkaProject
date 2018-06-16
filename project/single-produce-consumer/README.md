#BUILD (nell'ambiente docker):
  
  gradle build 

  gradle fatjar
  
  
  ## SERVER KAFKA:
  
  docker build -t kafka-img .

  docker network create -d bridge kafkanet

  docker run --network=kafkanet --name=kafka1 kafka-img
  

  ## PRODUTTORE:
  
  docker build -t produttore-img .

  docker run --network=kafkanet --name=produttore1 produttore-img
  

  ## CONSUMATORE:
  
  docker build -t consumatore-img .

  docker run --network=kafkanet --name=produttore1 consumatore-img