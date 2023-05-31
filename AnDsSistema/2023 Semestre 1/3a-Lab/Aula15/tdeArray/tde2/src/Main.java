public class Main {
    public static void main(String[] args){

        double[] notas ={ 8.5, 7.0, 9.0, 6.5, 10.0};

        double media = 0;

        for(int i = 0; i < notas.length; i++){

            media += notas[i];
        }

        media /= 5;

        System.out.println("A média da classe é "+media);
    }
}