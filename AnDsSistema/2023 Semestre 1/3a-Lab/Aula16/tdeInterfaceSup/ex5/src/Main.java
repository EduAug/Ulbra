import java.text.Normalizer;

public class Main {
    public static void main(String[] args) {
        FormaGeometrica ret = new Retangulo();
        FormaGeometrica circ = new Circulo();
        FormaGeometrica tri = new Triangulo();

        System.out.println(ret.calcularPerimetro());
        System.out.println(ret.calcularArea());

        System.out.println(circ.calcularPerimetro());
        System.out.println(circ.calcularArea());

        System.out.println(tri.calcularPerimetro());
        System.out.println(tri.calcularArea());
    }
}