import java.lang.Math;

public class Quadrado {

    double Lado;

    double calcularArea() {

        Lado = 4;

        double formula = Math.pow(Lado, 2);
        System.out.println("A área do quadrado é " + formula);
        return 1d;
    }
}
