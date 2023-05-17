public class Gato extends Animal{

    String raca;

    public Gato(String _nome, String _raca){

        super(_nome);
        this.raca = _raca;
    }

    @Override
    public void andar(){

        System.out.println("Gato anda-");
    }

    @Override
    public void comer(){

        System.out.println("Gato come-");
    }

    @Override
    public void dormir(){

        System.out.println("Gato dorme-");
    }
}
