public class Equipe {

    private String nome;
    private int vitorias;
    private int derrotas;
    private int empates;
    private int pontos;
    private int kills;
    private int assists;

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

    public int getPontos(){

        return pontos;
    }
    public void setPontos(int pontos){

        this.pontos = pontos;
    }

    public int getKills(){

        return kills;
    }
    public void setKills(int kills){

        this.kills = kills;
    }

    public int getAssists(){

        return assists;
    }
    public void setAssists(int assists){

        this.assists = assists;
    }

    public Equipe(String teamName){

        this.nome = teamName;
        this.vitorias = 0;
        this.derrotas = 0;
        this.empates = 0;
        this.pontos = 0;
        this.kills = 0;
        this.assists = 0;
    }

    public void registrarVitorias(int kills, int assists){

        this.vitorias++;
        this.pontos+=3;
        this.kills += kills;
        this.assists += assists;
    }

    public void registrarDerrotas(int kills, int assists){

        this.derrotas++;
        this.kills += kills;
        this.assists += assists;
    }

    public void registrarEmpates(int kills, int assists){

        this.empates++;
        this.pontos++;
        this.kills += kills;
        this.assists += assists;
    }

    public void exibirInformacoes(){

        System.out.println("Equipe:"+this.nome+" |V: "+this.vitorias+" |E: "+this.empates+" |D: "+this.empates+" |K: "+this.kills+" |A: "+this.assists+" |Pts: "+this.pontos );
    }

    public double calcularAproveitamento(){

        int totalJogos = (vitorias+empates+derrotas);
        int possiveisPontos = (totalJogos*3);
        double aproveitamento=0;
        if( possiveisPontos > 0 ){

            aproveitamento = ((double)pontos/possiveisPontos)*100;
        }
        return aproveitamento;
    }
}
