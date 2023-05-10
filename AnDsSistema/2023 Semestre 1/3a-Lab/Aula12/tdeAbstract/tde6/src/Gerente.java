public class Gerente extends Funcionario{

    @Override
    public double calcularSalario(){
        double multp = 3;
        double salBase = 1500;

        return salBase*multp;
    }

    @Override
    public String realizarTarefa(){

        return "Gerenciamento da data realizado com sucesso";
    }
}
