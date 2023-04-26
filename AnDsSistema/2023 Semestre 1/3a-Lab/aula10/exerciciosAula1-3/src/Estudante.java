public class Estudante {

    String nome;
    int matricula;
    String curso;

    public String getNome(){

        return nome;
    }
    public void setNome(String nome){

        this.nome = nome;
    }

    public int getMatricula(){

        return matricula;
    }
    public void setMatricula(int matricula){

        this.matricula = matricula;
    }

    public String getCurso(){

        return curso;
    }
    public void setCurso(String curso){

        this.curso = curso;
    }

    public Estudante(String estNome, int estMatr, String estCurs){

        this.nome = estNome;
        this.matricula = estMatr;
        this.curso = estCurs;
    }
    public Estudante(String estNome, int estMatr){

        this.nome = estNome;
        this.matricula = estMatr;
        this.curso = "ADS";
    }
}
