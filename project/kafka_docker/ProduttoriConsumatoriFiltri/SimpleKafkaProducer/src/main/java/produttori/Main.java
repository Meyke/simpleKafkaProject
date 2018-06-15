package produttori;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String topic = null;
		try {
        	topic = new String(args[0]);
        } catch(Exception e) {
        	/* indice fuori dai limiti o altro errore (e.g., conversione) */
        	/* ok, ci sono i valori di default */
        }
		
		Produttore produttore = new Produttore(topic);
		produttore.sendMessages();
}
}


