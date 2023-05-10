public class Caminhão extends Veiculo{


    Caminhão(String marca, String modelo, int ano){

        super(marca,modelo,ano);
    }


    public void ligarMotor() {
        System.out.println("Motor ligado");
    }

    public void desligarMotor() {
        System.out.println("Motor desligado");
    }
}
