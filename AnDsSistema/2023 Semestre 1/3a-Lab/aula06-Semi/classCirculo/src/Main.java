import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Circulo circ = new Circulo();
        Scanner see = new Scanner(System.in);

        System.out.println("Insira o valor do raio:");
        circ.Raio = see.nextDouble();

        System.out.println("A área do círculo é " +circ.calcularArea());

        System.out.println("O perímetro do círculo é " +circ.calcularPerimetro());
    }
}