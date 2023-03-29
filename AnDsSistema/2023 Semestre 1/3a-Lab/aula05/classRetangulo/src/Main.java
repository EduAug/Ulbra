import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner see = new Scanner(System.in);
        Retangulo ret = new Retangulo();

        System.out.println("Insira um valor para a base do retângulo:");
        double N1 = see.nextDouble();
        System.out.println("Insira um valor para a altura do retângulo:");
        double N2 = see.nextDouble();

        /*ret.Altura = N1;
        ret.Base = N2;*/

        System.out.println("A área do retângulo é "+ret.calcularArea(N1,N2));

        System.out.println("O período do retângulo é "+ret.calcularPeriodo(N1,N2));
    }
}