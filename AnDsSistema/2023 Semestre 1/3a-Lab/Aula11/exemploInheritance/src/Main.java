public class Main {
    public static void main(String[] args){

        Cachorro paulie = new Cachorro();
        Gato pharrel = new Gato();
        paulie.nome = "Paulie";paulie.raca = "Corgi";paulie.idade = 4;paulie.Som();paulie.Mover();

        pharrel.nome = "Pharrel";pharrel.pelagem = "Cinza";pharrel.idade = 7;pharrel.Som();pharrel.Mover();
    }
}