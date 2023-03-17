import java.util.Scanner;
public class Main {
    public static void printNL(String msg){
        System.out.println(msg);
    }
    public static void main(String[] args) {

        Scanner MyScan = new Scanner(System.in);

        printNL("Escolha um número natural (positivo, não fracionário) como limite");
        int limit = MyScan.nextInt();
        int i = 0;
        int soma = 0;
        while(i < limit){
            soma += i;
            i++;
        }
        printNL("A soma de todos os números entre 0 e "+limit+"(desconsiderando "+limit+") é "+soma);
    }
}