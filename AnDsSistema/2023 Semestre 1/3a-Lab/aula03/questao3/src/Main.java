import java.util.Scanner;
public class Main {
    public static void printNL(String msg){
        System.out.println(msg);
    }
    public static void main(String[] args) {
                Scanner MyScan = new Scanner(System.in);

                printNL("Escolha um número natural para conferir a tabuada:");
                int tab = MyScan.nextInt();
                printNL("Você deseja:");
                printNL("1-Receber os 10 primeiros múltiplos desse número");
                printNL("2-Receber todos os múltiplos desse número até 10");
                int opc = MyScan.nextInt();
                switch(opc){
                    case 1:
                        for(int i = 1; i <= 10;i++){
                            printNL(""+(i*tab));
                        }
                        break;
                    case 2:
                        for(int i = 0;i*tab < 10;i++){
                            printNL(""+(i*tab));
                        }
                        break;
                    default:
                        printNL("Opção não suportada, encerrando...");
                        break;
                }
    }
}