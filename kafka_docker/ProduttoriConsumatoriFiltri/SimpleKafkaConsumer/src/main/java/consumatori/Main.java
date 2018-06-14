package consumatori;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String topic = null;
		String group = null;
		
		try {
        	topic = new String(args[0]);
        	group = new String(args[1]);
        } catch(Exception e) {
        	/* indice fuori dai limiti o altro errore (e.g., conversione) */
        	/* ok, ci sono i valori di default */
        }
		
		Consumatore consumatore = new Consumatore(topic, group);
		while(true){
			consumatore.receiveMessages();
		}	
     }
		
}
