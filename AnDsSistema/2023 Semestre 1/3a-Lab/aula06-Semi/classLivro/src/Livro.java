public class Livro {

    String Titulo;
    String Autor;
    String Editora;
    int NroPaginas;

    public void exibirDetalhes(){
        System.out.println("O(A) autor(a) do livro " +Titulo +" é " +Autor +".");
        System.out.println("Publicado pela editora "+Editora +", possui "+NroPaginas +" páginas");
    }
}
