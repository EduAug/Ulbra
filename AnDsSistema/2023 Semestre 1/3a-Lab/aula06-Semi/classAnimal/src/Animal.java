import java.util.Random;

public class Animal {

    String Nome;
    int Idade;
    String Especie;

    public String emitirSom(){

        Random ranNois = new Random();

        String noise;
        int som = ranNois.nextInt(6-1)+1;
        switch (som){
            case 1:
                noise = "bocejo";
                break;
            case 2:
                noise = "rosnado";
                break;
            case 3:
                noise = "gargarejo";
                break;
            default:
                noise = "...latido?";
                break;
        }
        return noise;
    }

    public void dormir(){
        System.out.println("Então " +Nome +" virou de costas e foi dormir.");
    }
}
