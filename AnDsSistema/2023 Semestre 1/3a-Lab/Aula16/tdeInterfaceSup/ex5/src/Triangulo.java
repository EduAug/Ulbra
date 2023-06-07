public class Triangulo implements FormaGeometrica{

    double base = 7;
    double ladoA = 6;
    double ladoB = 15;
    double altura = 19;
    public double calcularArea() {
        return (base*altura)/2;
    }

    public double calcularPerimetro() {
        return ladoA+ladoB+base;
    }
}
