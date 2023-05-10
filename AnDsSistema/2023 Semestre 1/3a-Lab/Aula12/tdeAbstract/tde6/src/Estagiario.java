public class Estagiario extends Funcionario{

    @Override
    public double calcularSalario(){
        double multp = 0.8;
        double salBase = 1500;

        return salBase*multp;
    }

    @Override
    public String realizarTarefa(){

        return "Culpa redirecionada com sucesso";
    }
}
