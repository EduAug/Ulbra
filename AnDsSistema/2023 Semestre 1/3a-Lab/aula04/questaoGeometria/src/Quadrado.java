import java.lang.Math;
import java.util.Scanner;

public class Quadrado {

    double Lado;

    double calcularArea() {

        System.out.println("Insira a medida do lado");
        Scanner scan = new Scanner(System.in);
        Lado = scan.nextDouble();scan.nextLine();

        double formula = Math.pow(Lado, 2);
        return formula;
    }
}
