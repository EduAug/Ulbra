public class Circulo extends FormaGeometrica{

    double raio;

    public Circulo(double _raio){

        this.raio = _raio;
    }

    @Override
    public double calcularArea(){

        return Math.PI*Math.pow(raio,2);
    }

    @Override
    public double calcularPerimetro(){

        return 2*Math.PI*raio;
    }
}
