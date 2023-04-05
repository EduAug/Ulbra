public class Loja {

    Produto produto1;
    Produto produto2;
    Produto produto3;
    public void adicionarProduto(Produto product){

        if(produto1==null){

            produto1 = product;
        }else if(produto2==null){

            produto2 = product;
        }else if(produto3==null){

            produto3 = product;
        }
    }

    public void removerProduto(Produto product){

        if(produto1!=null && produto1 == product){

            produto1 = null;
        }else if(produto2!=null && produto2 == product){

            produto2 = null;
        }else if(produto3!=null && produto3 == product){

            produto3 = null;
        }
    }

    public void listarProdutos(){

        System.out.println("----------------------------------------------------------------");
        if(produto1 != null){
            System.out.println(produto1.Nome + " | " + produto1.Preco + " | " + produto1.Quantidade);
        }
        if(produto2 != null){
            System.out.println(produto2.Nome+" | "+produto2.Preco+" | "+produto2.Quantidade);
        }
        if(produto3 != null){
            System.out.println(produto3.Nome + " | " + produto3.Preco + " | " + produto3.Quantidade);
        }
        System.out.println("----------------------------------------------------------------");
    }

    public void venderProduto(Produto product, int qtd){

        if(produto1!=null && produto1 == product){

            if(product.Quantidade >= qtd){

                produto1.Quantidade -= qtd;
                System.out.println("Foram vendidas " + qtd + " unidades de " + product.Nome + " por R$" + (product.Preco * qtd));
            }else{

                System.out.println("Não há estoque suficiente de "+product.Nome);
            }
        }else if(produto2!=null && produto2 == product){

            if(product.Quantidade >= qtd) {

                produto2.Quantidade -= qtd;
                System.out.println("Foram vendidas " + qtd + " unidades de " + product.Nome + " por R$" + (product.Preco * qtd));
            }else{

                System.out.println("Não há estoque suficiente de "+product.Nome);
            }
        }else if(produto3!=null && produto3 == product){

            if(product.Quantidade >= qtd) {
                produto3.Quantidade -= qtd;
                System.out.println("Foram vendidas " + qtd + " unidades de " + product.Nome + " por R$" + (product.Preco * qtd));
            }else{

                System.out.println("Não há estoque suficiente de "+product.Nome);
            }
        }
    }

    public void adicionarEstoque(Produto product, int qtd){

        if(produto1!=null && produto1 == product){

            System.out.println("Adicionados "+qtd+" unidades de "+product.Nome+" ao estoque");
            produto1.Quantidade += qtd;
        }else if(produto2!=null && produto2 == product){

            System.out.println("Adicionados "+qtd+" unidades de "+product.Nome+" ao estoque");
            produto2.Quantidade += qtd;
        }else if(produto3!=null && produto3 == product){

            System.out.println("Adicionados "+qtd+" unidades de "+product.Nome+" ao estoque");
            produto3.Quantidade += qtd;
        }
    }
}
