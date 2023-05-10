public class Roupa extends Produto{

    @Override
    public double calcularPreço(){

        double taxa = 1.0;
        double valorComp = 84;
        double frete = 17;

        return (valorComp+frete)*taxa;
    }

    @Override
    public String exibirDetalhes(){

        return "Peça:   | Valor:    |   Categoria:   ";
    }
}
