public class Trapezio {

    double BaseMr;
    double Base;
    double Altura;

    double calcularArea(){

        BaseMr = 15.9;
        Base = 6.6;
        Altura = 27;

        double formula = ((BaseMr+Base)/2)*Altura;
        System.out.println("A área do trapézio é "+formula);
        return 1d;
    }
}
