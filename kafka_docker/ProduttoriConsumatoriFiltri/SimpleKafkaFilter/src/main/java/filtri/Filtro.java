package filtri;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import consumatori.Consumatore;
import produttori.Produttore;

public class Filtro {
	
	private String topicSource;
	private String topicDestination;
	private Consumatore consumatore;
	private Produttore produttore;

	
	public Filtro(String topicSource, String topicDestination, String group){
		
	    this.topicSource = topicSource;
	    this.topicDestination = topicDestination;
	 
	        //kafka consumer object
	    this.consumatore = new Consumatore(topicSource, group);
		this.produttore = new Produttore(topicDestination);
	 
	        //subscribe to topic
		}
	
	
	public void filterMessages(){
	    //infinite poll loop
		while(true){
			this.produttore.sendMessages(this.consumatore.receiveMessages());
		}
	}
}
