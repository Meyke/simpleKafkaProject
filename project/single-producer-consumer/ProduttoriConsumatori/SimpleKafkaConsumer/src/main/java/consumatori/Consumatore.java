package consumatori;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;

public class Consumatore {
	
	KafkaConsumer<String, String> consumer = null;
	
	public Consumatore(String topic, String group){
		
		Properties props = new Properties();
	        props.put("bootstrap.servers", "kafka1:9092");

	        //group triciclo e palloncino
	        props.put("group.id", group);
	        
	        //using auto commit
	        props.put("enable.auto.commit", "true");
	 
	        //string inputs and outputs
	        props.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
	        props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
	 
	        //kafka consumer object
	        consumer = new KafkaConsumer<String, String>(props);
	 
	        //subscribe to topic
	        consumer.subscribe(Arrays.asList(topic));
	}
	
	
	
	public List<String> receiveMessages(){
			List<String> messages = new ArrayList<>();
			//infinite poll loop
	       ConsumerRecords<String, String> records = consumer.poll(100);
	       for (ConsumerRecord<String, String> record : records){
	           System.out.printf("topic = %s, partition = %s, offset = %d, key = %s, value = %s\n", record.topic(), record.partition(), record.offset(), record.key(), record.value());
	           messages.add(record.value());
	       }
	       return messages;
	}

}
