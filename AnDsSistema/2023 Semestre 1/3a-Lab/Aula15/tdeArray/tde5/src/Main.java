public class Main {
    public static void main(String[] args){

        int[] numeros = {1,2,3,4,5,6,7,8,9,10};

        int[] numerosImpares = new int[numeros.length];
        //Array do mesmo tamanho de "numeros", para serem pegos quantos
        //Ímpares quanto necessário

        for(int i = 0; i < numeros.length; i++){

            if(numeros[i]%2 != 0){
                //Se o número em números for ímpar
                for(int j = 0; j < numerosImpares.length; j++){
                    //Inicializa outro laço, de números ímpares
                    if(numerosImpares[j] == 0){
                        //E se o índice for 0 ou "vazio" é substituído por "numero"
                        numerosImpares[j] = numeros[i];
                        break;  //E então break para adicionar apenas uma vez
                    }
                }
            }
        }

        for (int i = 0; i < numerosImpares.length; i++){
            //E então printar o array de numerosImpares em separado
            //Alternativamente poderia ser feito sem um segundo array, e apenas
            //Imprimindo quando numeros fosse impar, mas isso seria muito insosso

            //Porém, uma vez que o array é inicializado com 0s, é importante
            //tratar para não exibir 0
            if(numerosImpares[i]!=0) {
                System.out.println("Numero: " + numerosImpares[i]);
            }
        }
    }
}