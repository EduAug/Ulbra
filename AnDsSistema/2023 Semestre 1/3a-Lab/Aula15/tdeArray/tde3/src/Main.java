public class Main {
    public static void main(String[] args){

        int[] valores = {23,1,34,89,2};

        int maior = 0;
        for(int i = 0; i < valores.length; i++){

            if(valores[i] > maior){
                maior = valores[i];
            }
        }

        System.out.println("O maior valore é "+maior);
    }
}