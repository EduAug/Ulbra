import java.util.Date;

public class Program {
    public static void main(String[] args){
        Aluno aluno = new Aluno();
        aluno.nome = "Doe";
        Date date = new Date();

        Livro livro1 = new Livro();
        livro1.titulo = "Exem1";
        livro1.qtdPag = 128;
        aluno.setLivro(livro1);
        System.out.println(livro1.titulo);

        livro1.emprestar(15);
        livro1.emprestar(aluno);
        livro1.emprestar(date);

        Livro livro2 = new Livro();
        livro2.titulo = "Exem2";
        livro2.qtdPag = 204;
        System.out.println(livro2.titulo);
    }
}
