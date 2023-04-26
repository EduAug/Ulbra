public class Equipe {

    private String nome;
    private int vitorias;
    private int derrotas;
    private int empates;

    public String getNome(){

        return nome;
    }
    public void setNome(String nome){

        this.nome = nome;
    }

    public int getVitorias(){

        return vitorias;
    }
    public void setVitorias(int vitorias){

        this.vitorias = vitorias;
    }

    public int getDerrotas(){

        return derrotas;
    }
    public void setDerrotas(int derrotas){

        this.derrotas = derrotas;
    }

    public int getEmpates(){

        return empates;
    }
    public void setEmpates(int empates){

        this.empates = empates;
    }

    public Equipe(String teamName){

        this.nome = teamName;
        this.vitorias = 0;
        this.derrotas = 0;
        this.empates = 0;
    }

    public void registrarVitorias(){

        this.vitorias++;
    }

    public void registrarDerrotas(){

        this.derrotas++;
    }

    public void registrarEmpates(){

        this.empates++;
    }
}
