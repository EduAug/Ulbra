import java.lang.Math;

public class Circulo {

    double Raio;

    public double calcularArea(){

        return Math.PI*Math.pow(Raio,2);
    }

    public double calcularPerimetro(){

        return 2*Math.PI*Raio;
    }
}
