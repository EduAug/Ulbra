public class Deposito implements Pagavel{

    public void pagar() {
        System.out.println("Deposito pago, fundos incrementados");
    }

    public void verificarPagamento() {
        System.out.println("Saldo atual: Mais que antes");
    }
}
