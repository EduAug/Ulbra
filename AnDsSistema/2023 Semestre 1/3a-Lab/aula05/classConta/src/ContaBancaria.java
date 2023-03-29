public class ContaBancaria {

    int numeroDaConta;
    double Saldo;
    String Titular;

    public void depositar(double qtdDep){

        Saldo = qtdDep;
    }

    public void sacar(double qtdDep){

        if(Saldo - qtdDep < 0){
            System.out.println("Você não possui saldo suficiente para sacar!");
        }else{
            Saldo = Saldo - qtdDep;
            System.out.println("Você sacou R$" +qtdDep);
            System.out.println("Total da conta: R$ " +Saldo);
        }
    }

    public void transferir(double qtdTransf){

        if(Saldo - qtdTransf < 0){
            System.out.println("Você não possui saldo suficiente para realizar essa transferência");
        }else{

            Saldo = Saldo - qtdTransf;
        }
    }
}
