public abstract class Animal{

    private String nome;

    public Animal(String _nome){

        this.nome = _nome;
    }

    public abstract void comer();
    public abstract void dormir();
    public abstract void andar();
}
