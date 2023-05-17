public abstract class FormaGeometrica{
    public static int placeholder = 2;

    public abstract double calcularArea();

    public abstract double calcularPerimetro();

    public static double calcularAreaCirculo(double _raio){

        return Math.PI*Math.pow(_raio,2.0);
    }

    public static double calcularAreaTriangulo(double altura, double base){

        return (altura*base)/2;
    }
}
