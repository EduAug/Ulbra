import java.util.Date;

public class Livro {
    int qtdPag;
    String titulo;
    String autor;

    int emprestar(int dias){
        return dias;
    }
    void emprestar(Date data){
        System.out.println("Emprestado em " +data);
    }
    void emprestar(Aluno a){
        System.out.println("Emprestado para: "+a.nome);
    }
}
