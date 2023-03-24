public class Main {
    public static void main(String[] args) {

        Quadrado quad = new Quadrado();
        Triangulo tria = new Triangulo();
        Circunferencia circ = new Circunferencia();
        Trapezio trap = new Trapezio();

        quad.calcularArea();
        tria.calcularArea();
        circ.calcularArea();
        trap.calcularArea();
    }
}