public class Livro extends Produto{

    @Override
    public double calcularPreço(){

        double taxa = 1.1;
        double valorComp = 67;
        double frete = 30;

        return (valorComp+frete)*taxa;
    }

    @Override
    public String exibirDetalhes(){

        return "Nome do Livro:  | Valor:    |   Autor:   ";
    }
}
