import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Fracao fracao = new Fracao();
        Scanner myScan = new Scanner(System.in);

        System.out.println("Inserir as duas frações: \nCompletas(1) ou numerador e denominador(2)?");
        int opt = myScan.nextInt();myScan.nextLine();

        switch(opt){

        case 1:

            System.out.println("Insira a primeira fração (Com a barra de divisão!)");
            String fracaoComp1 = myScan.nextLine();
            System.out.println("Insira a segunda fração (Também com barra de divisão!)");
            String fracaoComp2 = myScan.nextLine();
            fracao.ReturnFracao(fracaoComp1,fracaoComp2);
            break;
        case 2:

            System.out.println("Insira o primeiro numerador (Antes da barra)");
            int fracaoNum1 = myScan.nextInt();myScan.nextLine();
            System.out.println("Insira o primeiro denominador (Depois da barra)");
            int fracaoDen1 = myScan.nextInt();myScan.nextLine();
            System.out.println("Insira o segundo numerador");
            int fracaoNum2 = myScan.nextInt();myScan.nextLine();
            System.out.println("Insira o segundo denominador");
            int fracaoDen2 = myScan.nextInt();myScan.nextLine();
            fracao.ResultFracao(fracaoNum1,fracaoDen1,fracaoNum2,fracaoDen2);
            break;
        default:

            System.out.println("Opção não suportada, adeus...");
            break;
        }
    }
}