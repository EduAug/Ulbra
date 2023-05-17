public class Peixe extends Animal{

    String especie;

    public Peixe(String _nome, String _especie){

        super(_nome);
        this.especie = _especie;
    }
    @Override
    public void andar(){

        System.out.println("Peixe nada^");
    }

    @Override
    public void comer(){

        System.out.println("Peixe come^");
    }

    @Override
    public void dormir(){

        System.out.println("Peixe dorme^");
    }
}
