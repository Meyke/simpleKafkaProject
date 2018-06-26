# project/multiple_producer_consumer (versione su docker swarm)



                                         --  Consumer TRICICLO
                                     /--/
       Producer -----> |-- topic1 --|                                        -- Consumer BICICLETTA(partizione1)
                                     \--\                                /--/
                                         --   Filter PHI    -- topic2 --|
                                                                         \--\
                                                                             -- Consumer BICICLETTA(partizione2)
  




Ogni elemento gira su un proprio contenitore.
Ogni contenitore viene assegnato ad una macchina virtuale (nodo).

# Vagrant
I nodi sono 3: swarm-1 swarm-2 swarm-3.
Esiste anche un nodo di controllo chiamato dev.
I nodi sono gestiti con vagrant.
La cartella di sertup dell'ambiente vagrant è ambienti/ambiente_swarm.
La cartella condivisa tra tutte le macchine virtuali è ambienti/_shared e la cartella corrente (project).
Gli indirizzi delle macchine virtuali sono assegnati staticamente all'interno dell'intervallo 10.11.1.0/24.

Lanciare l'ambiente vagrant:
```cd ambienti/ambiente_swarm
vagrant up
```


# Connessione alla macchina virtuale dev:
```
vagrant ssh dev 
```


# BUILD (progetti java e immagini docker)
Nella cartella projects:
Lo script build-all-projects.sh gestisce la build dei progetti.
lo script build-all-images.sh gestisce la creazione delle immagini di contenitori docker.
```cd projects
./build-all-projects.sh
./build-all-images.sh
```

# ESECUZIONE
Dopo aver eseguito la build è possibile lanciare i contenitori:
```cd projects
./start-kafka-stack.sh
```

# LOG
Connessione alla macchina virtuale swarm-1:
```
vagrant ssh swarm-1
```
Esecuzione di uno script che salva nella cartella [logs](./logs) i log del filtro
e dei consumatori:
```
./get-all-logs.sh
```
In alternativa per esplorare i log di ogni singolo servizio dopo essersi
connesso alla macchina swarm-1 esegui il seguente comando:
```
docker service logs "nome_del_contenitore"

