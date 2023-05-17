public class Cachorro extends Animal{

    String pedigree;

    public Cachorro(String _nome, String pedig){

        super(_nome);

        this.pedigree = pedig;
    }

    @Override
    public void andar() {

        System.out.println("Cachorro anda~");
    }

    @Override
    public void comer() {

        System.out.println("Cachorro come~");
    }

    @Override
    public void dormir() {

        System.out.println("Cachorro dorme~");
    }
}
