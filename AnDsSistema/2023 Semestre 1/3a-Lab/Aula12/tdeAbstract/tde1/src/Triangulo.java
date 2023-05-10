public class Triangulo extends FormaGeometrica{

    double altura;
    double base;
    double ladoA;
    double ladoC;

    public Triangulo(double h, double b, double A, double C){

        this.altura = h;
        this.base = b;
        this.ladoA = A;
        this.ladoC = C;
    }

    @Override
    public double calcularArea(){

        return (base*altura)/2;
    }

    @Override
    public double calcularPerimetro(){

        return (ladoA+base+ladoC);
    }
}
