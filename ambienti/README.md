# Ambienti di esecuzione del progetto 

Questi ambienti di esecuzione possono essere utilizzati per 
eseguire i progetti delle applicazioni distribuite 
definiti nella cartella [project/](../project/) del repository. 

## Preparazione 

Per usare delle versioni pi� recenti del software di sviluppo 
(come *JDK* e *Gradle*) 
� necessario modificare le prime righe dei relativi script di installazione 
(ad esempio, **asw/environments/shared/scripts/setup-java.sh** per *JDK*), 
indicando il numero della versione da utilizzare. 

## Utilizzo degli ambienti di esecuzione 

Ogni ambiente di esecuzione � composto da uno o pi� macchine virtuali, 
collegate in una rete privata. 

Ogni ambiente � rappresentato da una diversa cartella di questa sezione del repository. 
Si veda il file **README.md** di una cartella per la descrizione del relativo ambiente. 

Gli ambienti vengono creati con **Vagrant**, 
e possono essere tutti gestiti allo stesso modo. 

Per gestire un ambiente bisogna: 

1. usare una shell (per esempio, Git) del proprio PC 

2. posizionarsi nella cartella dell'ambiente di interesse (ad esempio, **asw/environments/developer**)

3. per avviare o creare l'ambiente di esecuzione, usare il comando `vagrant up` 

4. per collegarsi con SSH a una macchina virtuale *VM* dell'ambiente, usare il comando `vagrant ssh VM`
    
E' anche possibile: 

* arrestare l'ambiente di esecuzione, con il comando `vagrant halt`

* distruggere l'ambiente di esecuzione, con il comando `vagrant destroy -f`  

## Ambienti 
  
* [docker](docker/): 
  per la gestione e l'esecuzione di contenitori *Docker*  

* [docker-swarm](docker-swarm/): 
  per la gestione e l'esecuzione di un cluster (*swarm*) di nodi *Docker*  

<!---
  nulla di altro da escludere, in questo momento 
--> 

<!---
* [standalone](standalone/):
  l'ambiente pi� semplice, per l'esecuzione di applicazioni Java non distribuite 
--> 
