package filtri;

public class Main {

	public static void main(String[] args){
		// TODO Auto-generated method stub

		String topicSource = null;
		String topicDestination = null;
		String group = null;
		
		try {
        	topicSource = args[0];
        	topicDestination = args[1];
        	group = args[2];
        } catch(Exception e) {
        	/* indice fuori dai limiti o altro errore (e.g., conversione) */
        	/* ok, ci sono i valori di default */
        }
		
		Filtro filtro = new Filtro(topicSource, topicDestination, group);
		filtro.filterMessages();
		}

}
