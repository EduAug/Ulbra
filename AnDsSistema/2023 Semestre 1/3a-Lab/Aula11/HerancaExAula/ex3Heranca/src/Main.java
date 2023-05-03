public class Main {
    public static void main(String[] args){

        FiguraGeometrica amorfo = new FiguraGeometrica();
        Quadrado quad = new Quadrado();

        System.out.println(amorfo.calcularArea());
        System.out.println(amorfo.calcularPerimetro());

        quad.lado = 7;
        System.out.println(quad.calcularArea());
        System.out.println(quad.calcularPerimetro());
    }
}