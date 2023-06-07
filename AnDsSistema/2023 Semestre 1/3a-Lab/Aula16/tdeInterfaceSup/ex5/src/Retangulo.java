public class Retangulo implements FormaGeometrica{

    double base = 25;
    double altura = 6;
    public double calcularArea(){
        return base*altura;
    }

    public double calcularPerimetro(){
        return 2*(base+altura);
    }
}
