public class Loja {

    Produto produto1 = new Produto();
    Produto produto2 = new Produto();
    Produto produto3 = new Produto();


    public void adicionarProduto(Produto product){

        if(produto1.Nome == null || produto2.Nome == "" && produto1.Preco == 0 && produto1.Quantidade == 0){

            produto1.Nome = product.Nome;
            produto1.Preco = product.Preco;
            produto1.Quantidade = product.Quantidade;
        }else if(produto2.Nome == null || produto2.Nome == ""  && produto2.Preco == 0 && produto2.Quantidade == 0){

            produto2.Nome = product.Nome;
            produto2.Preco = product.Preco;
            produto2.Quantidade = product.Quantidade;
        }else if(produto3.Nome == null || produto3.Nome == ""  && produto3.Preco == 0 && produto3.Quantidade == 0){

            produto3.Nome = product.Nome;
            produto3.Preco = product.Preco;
            produto3.Quantidade = product.Quantidade;
        }
    }

    public void removerProduto(Produto product){

        if(produto1.Nome.equals(product.Nome)){

            produto1.Nome = "";
            produto1.Preco = 0;
            produto1.Quantidade = 0;
        }else if(produto2.Nome.equals(product.Nome)){

            produto2.Nome = "";
            produto2.Preco = 0;
            produto2.Quantidade = 0;
        }else if(produto3.Nome.equals(product.Nome)){

            produto3.Nome = "";
            produto3.Preco = 0;
            produto3.Quantidade = 0;
        }
    }

    public void listarProdutos(){

        System.out.println("---------------------------------------");
        System.out.println(produto1.Nome+"\t | "+produto1.Preco+"\t | "+produto1.Quantidade);
        System.out.println(produto2.Nome+"\t | "+produto2.Preco+"\t | "+produto2.Quantidade);
        System.out.println(produto3.Nome+"\t | "+produto3.Preco+"\t | "+produto3.Quantidade);
        System.out.println("---------------------------------------");
    }

    public void venderProduto(Produto product, int qtd){


        if(produto1.Nome.equals(product.Nome)){

            if(produto1.Quantidade >= qtd){

                System.out.println("Vendidos "+qtd+" unidades de "+product.Nome+" por R$"+(product.Preco*qtd));
                produto1.Quantidade -= qtd;
            }else{

                System.out.println("Estoque de "+product.Nome+" insuficiente!");
            }
        }
        else if(produto2.Nome.equals(product.Nome)){

            if(produto2.Quantidade >= qtd){

                System.out.println("Vendidos "+qtd+" unidades de "+product.Nome+" por R$"+(product.Preco*qtd));
                produto2.Quantidade -= qtd;
            }else{

                System.out.println("Estoque de "+product.Nome+" insuficiente!");
            }
        }
        else if(produto3.Nome.equals(product.Nome)){

            if(produto3.Quantidade >= qtd){

                System.out.println("Vendidos "+qtd+" unidades de "+product.Nome+" por R$"+(product.Preco*qtd));
                produto3.Quantidade -= qtd;
            }else{

                System.out.println("Estoque de "+product.Nome+" insuficiente!");
            }
        }
    }

    public void adicionarEstoque(Produto product, int qtd){

        if(produto1.Nome.equals(product.Nome)){

            produto1.Quantidade += qtd;
            System.out.println("Foram adicionados "+qtd+" ao produto "+product.Nome+"\nTotal: "+produto1.Quantidade);
        }else if(produto2.Nome.equals(product.Nome)){

            produto2.Quantidade += qtd;
            System.out.println("Foram adicionados "+qtd+" ao produto "+product.Nome+"\nTotal: "+produto2.Quantidade);
        }else if(produto3.Nome.equals(product.Nome)){

            produto3.Quantidade += qtd;
            System.out.println("Foram adicionados "+qtd+" ao produto "+product.Nome+"\nTotal: "+produto3.Quantidade);
        }
    }
}
