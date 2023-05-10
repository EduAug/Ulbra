public abstract class Veiculo{

    String marca;
    String modelo;
    int ano;

    public abstract void ligarMotor();
    public abstract void desligarMotor();

    Veiculo(String _marca, String _modelo, int _ano){

        this.marca = _marca;
        this.modelo = _modelo;
        this.ano = _ano;
    }
}
