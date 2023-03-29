public class Main {
    public static void main(String[] args) {

        Livro livro = new Livro();

        livro.Autor = "Edgar Vivar";
        livro.Editora = "Florefoi";
        livro.Titulo = "Régua";
        livro.NroPaginas = 108;

        livro.exibirDetalhes();
    }
}