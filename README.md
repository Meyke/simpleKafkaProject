# Progetto ASW 2017/2018
                    
Benvenuti al repository del progetto 
di Architettura dei Sistemi Software.

È presente un [report](reportProgettoASW.pdf) di descrizione del progetto.

Questo repository contiene il codice del progetto
del corso di Architettura dei Sistemi Software
relativo a delle semplici applicazioni distribuite basate sulla comunicazione asincrona
e sull'uso di Apache Kafka(https://kafka.apache.org/), 
che vanno eseguite in degli opportuni ambienti distribuiti su cui è presente Apache Kafka: 
* il software è normalmente scritto in [Java](http://www.oracle.com/technetwork/java/index.html), 
  e costruito con [Gradle](http://gradle.org/); 
* ciascun ambiente di esecuzione distribuito è composto 
  da una o più macchine virtuali create con 
  [VirtualBox](https://www.virtualbox.org/)
  e [Vagrant](https://www.vagrantup.com/), 
  e accedute tramite [Git](https://git-scm.com/); 
* inoltre, gli ambienti di esecuzione  
  sono basati su contenitori 
  [Docker](https://www.docker.com/). 

## Membri del Team:

Michele Tedesco

Daniele Caldarini

Lorenzo Vaccaro

Luca Lomasto

Danilo Ponti

## Software da installare sul proprio PC 

### Per lo sviluppo del software 

* [Java SDK](http://www.oracle.com/technetwork/java/javase/) 
* [Gradle](http://gradle.org/) 
* [Git](https://git-scm.com/) 

### Per la gestione degli ambienti di esecuzione  

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/) 
* [Git](https://git-scm.com/) 

[Docker](https://www.docker.com/) non è invece necessario, 
poiché può essere eseguito nelle macchine virtuali. 

## Organizzazione del repository 

Questo repository è organizzato in diverse sezioni (cartelle): 
* [project](project/) contiene il codice delle *applicazioni distribuite*, 
  con una sottosezione (sottocartella) per ciascuno dei progetti;
* [ambienti](ambienti/) contiene il codice per la gestione degli *ambienti distribuiti*, 
  con una sottosezione (sottocartella) per ciascuno degli ambienti distribuiti 
  su cui poter eseguire le applicazioni distribuite sviluppate.

