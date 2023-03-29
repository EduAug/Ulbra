import java.util.Scanner;

public class Triangulo {

    double Base;
    double Altura;

    double calcularArea(){

        Scanner scan = new Scanner(System.in);
        System.out.println("Insira a medida da base");
        Base = scan.nextDouble();scan.nextLine();
        System.out.println("Insira a altura do triângulo");
        Altura = scan.nextDouble();scan.nextLine();

        return (Base*Altura)/2;
    }
}
