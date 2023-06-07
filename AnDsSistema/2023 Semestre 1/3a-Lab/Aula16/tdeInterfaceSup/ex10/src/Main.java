public class Main {
    public static void main(String[] args){

        Persistente michaelYackssan = new User();

        michaelYackssan.salvar("Michael", 34);
        michaelYackssan.buscar();

        michaelYackssan.atualizar("Leandro",14,1);
        michaelYackssan.buscar();

        michaelYackssan.deletar();
        michaelYackssan.buscar();
    }
}