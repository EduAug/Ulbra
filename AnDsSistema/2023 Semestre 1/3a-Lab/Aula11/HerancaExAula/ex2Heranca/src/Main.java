public class Main {
    public static void main(String[] args){

        Veiculo vehi1 = new Veiculo();
        Carro car1 = new Carro();
        vehi1.marca = "Yotota";
        vehi1.modelo = "Etnicos";

        car1.marca = vehi1.marca;
        car1.modelo = vehi1.modelo;
        car1.numPassageiros = 5;
    }
}