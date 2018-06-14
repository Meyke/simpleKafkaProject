package produttori;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;



public class Produttore {
	
	private String topic;
	
	private Producer<Integer, String> producer = null;
	
	private Properties props;

	public Produttore(String topic){
		
		this.props = new Properties();
	    this.props.put("bootstrap.servers", "kafka1:9092");
	    this.props.put("key.serializer", "org.apache.kafka.common.serialization.IntegerSerializer");
	    this.props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
		this.producer = new KafkaProducer<Integer, String>(props);
		this.topic = topic;
	}
	
	
        
	public void sendMessages(){
		for(int i = 0; i < 100; i++) {
	        //send messages to my-topic
	         ProducerRecord producerRecord = new ProducerRecord<Integer, String>(topic, i, "Test Message #" + Integer.toString(i));
	         producer.send(producerRecord);
	         System.out.println("OK");
	      //close producer
		}
	     System.out.println("INVIATI");
		producer.close();
	}
	
	public void sendMessages(List<String> messages){
		for(String message : messages){
	        //send messages to my-topic
	         ProducerRecord producerRecord = new ProducerRecord<Integer, String>(topic, message + " Filtered");
	         producer.send(producerRecord);
	         System.out.println("FILTRATO");
	      //close producer
		}
	}
}
