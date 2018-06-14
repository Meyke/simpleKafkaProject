package produttori;

import java.util.Properties;
import java.util.Random;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;



public class Produttore {

	public static void main(String[] args) {
		
            System.out.println("aggiornamento2");	 
	        //properties for producer
	        Properties props = new Properties();
	        //props.put("bootstrap.servers", "my-swarm:9092"); NON FUNGE IL DOCKER ROUTING MESH. Perchè? 
	        props.put("bootstrap.servers", "my-swarm:9092, 10.11.1.72:9092, 10.11.1.73:9092"); //perchè non funge bene il routing mesh docker
			props.put("key.serializer", "org.apache.kafka.common.serialization.IntegerSerializer");
	        props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
	 
	        //create producer
	        Producer<Integer, String> producer = new KafkaProducer<Integer, String>(props);
	 
	        //send messages to my-topic
	        for(int i = 0; i < 100; i++) {
	            ProducerRecord producerRecord = new ProducerRecord<Integer, String>("topic", i, "Test Message #" + Integer.toString(i));
	            producer.send(producerRecord);
	            System.out.println("OK");
	        }
	        System.out.println("INVIATI");
	        //close producer
	        producer.close();
	        
	 
	}
}
