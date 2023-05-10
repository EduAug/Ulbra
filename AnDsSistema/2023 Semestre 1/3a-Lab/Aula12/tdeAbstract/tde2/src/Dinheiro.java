public class Dinheiro extends Pagamento{

    @Override
    public void realizarPagamento(){

        System.out.println("Valor pago");
    }

    @Override
    public void emitirRecibo(){

        System.out.println("Você pagou");
    }
}
