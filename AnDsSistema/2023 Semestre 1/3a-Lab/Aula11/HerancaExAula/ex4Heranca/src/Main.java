public class Main {
    public static void main(String[] args){

        // Conta conta1 = new Conta();
        ContaCorrente cc = new ContaCorrente();
        ContaPoupanca cp = new ContaPoupanca();

        // conta1.numero = 19012;
        // conta1.saldo = 500.05;

        // cc.numero = conta1.numero;
        // cc.saldo = conta1.saldo;

        cc.numero = 19012;
        cc.saldo = 500.05;
        cc.limite = 500;

        cp.numero = 4;
        cp.saldo = 15;
        cp.rendimento = 172;

        System.out.println(cc.numero+" "+cc.saldo+" "+cc.limite);

        if(cc.saldo > cc.limite){

            System.out.println(cc.numero+" estourou seu limite!");
        }

        System.out.println("Com seu rendimento, "+cp.numero+" possui R$"+(cp.rendimento+cp.saldo));
    }
}