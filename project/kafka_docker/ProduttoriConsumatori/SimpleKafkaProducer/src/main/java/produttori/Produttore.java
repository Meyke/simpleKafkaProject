package produttori;

import java.util.Properties;
import java.util.Random;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;



public class Produttore {

	public static void main(String[] args) {
		
            System.out.println("aggiornamento3");	 
	        //properties for producer
	        Properties props = new Properties();
	        props.put("bootstrap.servers", "10.11.1.71:9092");
			props.put("key.serializer", "org.apache.kafka.common.serialization.IntegerSerializer");
	        props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
	 
	        //create producer
	        Producer<Integer, String> producer = new KafkaProducer<Integer, String>(props);
	 
	        //send messages to my-topic
	        for(int i = 0; i < 100; i++) {
	            ProducerRecord producerRecord = new ProducerRecord<Integer, String>("topic1", i, "Test Message topic1#" + Integer.toString(i));
	            producer.send(producerRecord);
	            System.out.println("OKTopic1");
	        }
	        for(int i = 0; i < 100; i++) {
	            ProducerRecord producerRecord = new ProducerRecord<Integer, String>("topic2", i, "Test Message topic2#" + Integer.toString(i));
	            producer.send(producerRecord);
	            System.out.println("OKTopic2");
	        }
	        System.out.println("INVIATI");
	        //close producer
	        producer.close();
	        
	 
	}
}
