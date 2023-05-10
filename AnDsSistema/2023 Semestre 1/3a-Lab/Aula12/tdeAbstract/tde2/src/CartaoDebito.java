public class CartaoDebito extends Pagamento{

    double limite;

    @Override
    public void realizarPagamento(){

        System.out.println("Pagando...");
        limite+=1;
    }

    @Override
    public void emitirRecibo(){

        System.out.println("Pagamento realizado com sucesso");
    }
}
