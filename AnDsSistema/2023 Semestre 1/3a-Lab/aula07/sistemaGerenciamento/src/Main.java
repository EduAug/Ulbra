public class Main {
    public static void main(String[] args){

        Loja store = new Loja();
        Produto produtos1 = new Produto();
        Produto produtos2 = new Produto();
        Produto produtos3 = new Produto();

        produtos1.Nome="Prendedor";produtos1.Preco=8;produtos1.Quantidade=46;
        produtos2.Nome="Mesa";produtos2.Preco=96;produtos2.Quantidade=4;
        produtos3.Nome="Meteorito";produtos3.Preco=145;produtos3.Quantidade=0;

        store.adicionarProduto(produtos1);
        store.adicionarProduto(produtos2);
        store.adicionarProduto(produtos3);

        store.listarProdutos();

        store.removerProduto(produtos2);
        store.listarProdutos();

        store.venderProduto(produtos1,5);
        store.listarProdutos();
        store.venderProduto(produtos3,5);
        store.listarProdutos();

        store.adicionarEstoque(produtos3,7);
        store.adicionarProduto(produtos2);
        store.listarProdutos();
    }
}