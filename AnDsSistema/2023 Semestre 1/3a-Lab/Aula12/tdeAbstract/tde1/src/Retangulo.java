public class Retangulo extends FormaGeometrica{

    double altura;
    double base;

    Retangulo(double alt, double bas){

        this.altura = alt;
        this.base = bas;
    }
    @Override
    public double calcularArea(){

        return altura*base;
    }

    @Override
    public double calcularPerimetro(){

        return 2*(altura+base);
    }
}
