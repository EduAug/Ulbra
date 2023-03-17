import java.util.Scanner;
public class Main {
    public static void printNL(String msg){
        System.out.println(msg);
    }
    public static void main(String[] args) {
        Scanner MyScan = new Scanner(System.in);

        printNL("Escolha um número natural para conferir se é primo:");
        int comp = MyScan.nextInt();
        boolean isPrime = true; //Por padrão, o número "é primo", e apenas deixará de ser caso o bool mude
        //Settando o laço como 2, pois além de ser o primo mais baixo, serve para conferir se o número inserido
        //é par
        //Para que seja possível dividir o número inserido até que este seja 2 , ou metade de si
        //Fazendo um incremento no início, "limitando" o loop
        for(int i = 2 ; i <= comp/2; ++i){
            //Conferindo se o número "tratado" é par, uma vez que os pares são divisíveis por 2 além de 1 e si mesmo
            if(comp%i==0){
                isPrime = false; //Caso seja par, muda o bool e encerra o laço
                break;
                }
        }
        if (isPrime){ //Por fim, confere se o bool permanece como true, "primo desde o início", ou não
            printNL(""+comp+" é primo");
        }else{
            printNL(""+comp+" não é primo");
        }
    }
}