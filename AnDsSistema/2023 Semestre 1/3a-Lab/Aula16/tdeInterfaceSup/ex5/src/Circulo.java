public class Circulo implements FormaGeometrica{

    double raio = 7;
    public double calcularArea() {
        return Math.PI*Math.pow(raio,2);
    }

    public double calcularPerimetro() {
        return 2*Math.PI*raio;
    }
}
