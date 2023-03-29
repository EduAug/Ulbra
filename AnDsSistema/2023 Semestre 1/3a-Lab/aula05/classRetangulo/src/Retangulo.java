public class Retangulo {

    double Base;
    double Altura;

    public double calcularArea(double bas, double alt){

        //return Base*Altura;
        return bas*alt;
    }

    public double calcularPeriodo(double bas, double alt){

        //return 2(Base+Altura);
        return 2*(bas+alt);
    }
}
