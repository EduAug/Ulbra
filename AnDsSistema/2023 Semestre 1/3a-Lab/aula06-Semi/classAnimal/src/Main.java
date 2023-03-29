public class Main {
    public static void main(String[] args) {

        Animal anm = new Animal();

        anm.Especie = "Lagarto-de-Contas";
        anm.Nome = "Corrosão";
        anm.Idade = 9;

        System.out.println(anm.Nome +" está emitindo um " +anm.emitirSom());

        anm.dormir();

    }
}