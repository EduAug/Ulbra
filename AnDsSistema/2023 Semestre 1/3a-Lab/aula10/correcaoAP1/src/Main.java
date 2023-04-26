public class Main {

    public static void main(String[] args) {

        Estudante estudante1 = new Estudante();
        estudante1.setNome("Meleu");
        estudante1.setIdade(15);
        estudante1.setPontos(96);

        Estudante estudante2 = new Estudante();
        estudante2.setNome("Bárbara");
        estudante2.setIdade(16);
        estudante2.setPontos(85);

        Gincana _gincana = new Gincana();
        _gincana.setNomeGincana("Olimpíadas do Faustão");

        _gincana.AdicionarEstudante(estudante1);
        _gincana.AdicionarEstudante(estudante2);

        _gincana.ExibirVencedor();
    }
}