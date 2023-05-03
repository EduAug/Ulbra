public class Quadrado extends FiguraGeometrica{

    double lado;

    public double calcularPerimetro(){

        return 4*lado;
    }

    public double calcularArea(){

        return lado*lado;
    }
}
