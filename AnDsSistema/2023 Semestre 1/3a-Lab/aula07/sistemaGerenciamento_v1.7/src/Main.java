public class Main {
    public static void main(String[] args){

        Loja store = new Loja();
        Produto produtos1 = new Produto("Prendedor",8,46);
        Produto produtos2 = new Produto("Mesa",96,4);
        Produto produtos3 = new Produto("Meteorito",145,0);


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