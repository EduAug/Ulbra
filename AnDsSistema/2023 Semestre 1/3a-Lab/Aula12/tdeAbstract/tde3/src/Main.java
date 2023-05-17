public class Main {
    public static void main(String[] args){

        Animal god = new Cachorro("Fido","Dalmata");
        Animal tac = new Gato("Champ","Sphinx");
        Animal hsif = new Peixe("Blub", "Linguado");

        god.andar();
        god.comer();
        god.dormir();

        tac.comer();
        tac.andar();
        tac.dormir();

        hsif.dormir();
        hsif.comer();
        hsif.andar();
    }
}