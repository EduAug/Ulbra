import java.lang.Math;

public class Circunferencia {

    double Raio;

    double calcularArea(){

        Raio = 89.6;

        double formula = Math.PI * Math.pow(Raio,2);
        System.out.println("A área da circunferência é "+formula);
        return 1d;
    }
}
