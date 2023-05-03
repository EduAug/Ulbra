public class Main {
    public static void main(String[] args){

        Produtos prdcts = new Produtos();
        ProdutosPereciveis ddly = new ProdutosPereciveis();

        prdcts.codigo = 174;
        prdcts.preco = 17.85;

        ddly.codigo = 192;
        ddly.preco = 4.75;
        ddly.dataValidade = "2023/04/17";
    }
}