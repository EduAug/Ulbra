import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner see = new Scanner(System.in);
        Operacoes op = new Operacoes();

        System.out.println("Insira o primeiro número: ");
        double N1 = see.nextDouble();
        System.out.println("Insira o segundo número: ");
        double N2 = see.nextDouble();

        System.out.println("A soma entre os números inseridos é: ");
        System.out.println(op.somar(N1,N2));

        System.out.println("A diferença entre os números inseridos é: ");
        System.out.println(op.subtrair(N1,N2));

        System.out.println("O produto dos números inseridos é: ");
        System.out.println(op.multiplicar(N1,N2));

        System.out.println("A divisão dos números inseridos é: ");
        System.out.println(op.dividir(N1,N2));
    }
}