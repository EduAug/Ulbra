public class Vendedor extends Funcionario{

    @Override
    public double calcularSalario(){
        double multp = 1.7;
        double salBase = 1500;

        return salBase*multp;
    }

    @Override
    public String realizarTarefa(){

        return "Vendas diárias ocorreram bem";
    }
}
