public class Carro {

    private String cor;
    private int ano;
    private double valor;

    public String getCor(){

        return cor;
    }
    public void setCor(String cor){

        this.cor = cor;
    }

    public int getAno(){

        return ano;
    }
    public void setAno(int ano){

        this.ano = ano;
    }

    public double getValor(){

        return valor;
    }
    public void setValor(double valor){

        this.valor = valor;
    }

    public Carro(String color, int year, double value){

        this.cor = color;
        this.ano = year;
        this.valor = value;
    }
    public Carro(){}
    public Carro(int year, double value){

        this.cor = "Preto";
        this.ano = year;
        this.valor = value;
    }
}
