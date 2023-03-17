import java.util.Scanner;
public class Main {
    public static void printNL(String msg){
        System.out.println(msg);
    }
    public static void main(String[] args) {
        Scanner MyScan = new Scanner(System.in);

        printNL("Escolha um número natural delimitador ");
        int lim = MyScan.nextInt();
        for (int i = 1;i<=lim;i++){
            if(i%2!=0){
                printNL(""+i);
            }
        }
    }
}