public class CartaoCredito extends Pagamento{

    double saldo;

    @Override
    public void realizarPagamento(){

        System.out.println("Pagando...");
        saldo-=1;
    }

    @Override
    public void emitirRecibo(){

        System.out.println("Pagamento realizado com sucesso");
    }
}
