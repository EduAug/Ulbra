public class Main {
    public static void main(String[] args){

        Pagavel boleto = new Fatura();
        Pagavel check = new Cheque();
        Pagavel master = new Deposito();

        boleto.pagar();
        check.pagar();
        master.pagar();

        boleto.verificarPagamento();
        check.verificarPagamento();
        master.verificarPagamento();
    }
}