public class Main {
    public static void main(String[] args){

        Animal anm = new Animal();
        Cachorro cac = new Cachorro();

        System.out.print("A criatura faz ");
        anm.EmitirSom();

        System.out.print("O cão faz ");
        cac.EmitirSom();
        System.out.print(" e também ");
        cac.latir();
    }
}