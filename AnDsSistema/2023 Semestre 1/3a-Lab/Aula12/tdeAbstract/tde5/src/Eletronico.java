public class Eletronico extends Produto{

    @Override
    public double calcularPreço(){

        double taxa = 1.2;           // Esses valores seriam atribuidos através de um construtor
        double valorComp = 120;    // E atributos, propriamente ditos
        double frete = 35;

        return (valorComp+frete)*taxa;
    }

    @Override
    public String exibirDetalhes(){

        return "Nome do eletrônico:     | Valor:    |   Distrib.:   ";
    }
}
