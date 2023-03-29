public class Main {
    public static void main(String[] args) {

        Quadrado quad = new Quadrado();
        Triangulo tria = new Triangulo();
        Circunferencia circ = new Circunferencia();
        Trapezio trap = new Trapezio();

        System.out.println("A área do quadrado é "+quad.calcularArea());    //Método retorno 1
        System.out.println("A área do triângulo é " +tria.calcularArea());  //Método retorno 2
        circ.calcularArea();                                                //Método retorno 3
        trap.calcularArea();                                                // 3 também
    }
}