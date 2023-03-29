import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner see = new Scanner(System.in);
        ContaBancaria CB = new ContaBancaria();
        ContaBancaria CBR = new ContaBancaria();

        CBR.Saldo = 0;CBR.Titular = "Pedrin";CBR.numeroDaConta = 98765;

        System.out.println("Insira os dados da conta:");
        System.out.println("Número");
        int ncont = see.nextInt();see.nextLine();
        CB.numeroDaConta = ncont;
        System.out.println("Titular");
        String titul = see.nextLine();
        CB.Titular = titul;


        System.out.println("Insira uma quantia para ser depositada:");
        double qtdDep = see.nextDouble();see.nextLine();
        CB.depositar(qtdDep);

        System.out.println("Insira uma quantia para sacar:");
        double qtdSaq = see.nextDouble();see.nextLine();
        CB.sacar(qtdSaq);

        System.out.println("Insira a quantia para ser transferida:");
        double qtdTrf = see.nextDouble();see.nextLine();
        System.out.println("Insira o número da conta que receberá a transferência:");
        int ncontRec = see.nextInt();see.nextLine();

        if(ncontRec == CBR.numeroDaConta){
                CB.transferir(qtdTrf);
                System.out.println("Saldo atual: R$ "+CB.Saldo);
                System.out.println("Você enviou R$ "+qtdTrf +" para "+CBR.Titular );
                CBR.depositar(qtdTrf);
                System.out.println("------------------------");
                System.out.println("Você recebeu R$ "+qtdTrf +" de "+CB.Titular);
                System.out.println("Saldo atual: R$ "+CBR.Saldo);
            } else {
                System.out.println("Não existe nenhum usuário com conta número " +ncontRec);
            }
    }
}