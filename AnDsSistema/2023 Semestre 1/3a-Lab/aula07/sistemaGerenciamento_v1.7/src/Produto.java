public class Produto {

    String Nome;
    double Preco;
    int Quantidade;

    public String getNome(){

        return Nome;
    }
    public void setNome(String nome){

        Nome = nome;
    }

    public double getPreco(){

        return Preco;
    }
    public void setPreco(double preco){

        Preco = preco;
    }

    public int getQuantidade(){

        return Quantidade;
    }
    public void setQuantidade(int quantidade){

        Quantidade = quantidade;
    }

    public Produto(String name, double value, int qtd){

        this.Nome = name;
        this.Preco = value;
        this.Quantidade = qtd;
    }
}
