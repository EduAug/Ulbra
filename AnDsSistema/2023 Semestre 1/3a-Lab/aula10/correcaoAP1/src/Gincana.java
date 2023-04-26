public class Gincana{

    private String nomeGincana;
    private int totalEstudantes;
    private Estudante estudanteVencedor;
    private int pontuacaoMaxima;

    public String getNomeGincana(){

        return nomeGincana;
    }
    public void setNomeGincana(String nomeGincana){

        this.nomeGincana = nomeGincana;
    }

    public int getTotalEstudantes(){

        return totalEstudantes;
    }
    public void setTotalEstudantes(int totalEstudantes){

        this.totalEstudantes = totalEstudantes;
    }

    public Estudante getEstudanteVencedor(){

        return estudanteVencedor;
    }
    public void setEstudanteVencedor(Estudante estudanteVencedor){

        this.estudanteVencedor = estudanteVencedor;
    }

    public int getPontuacaoMaxima(){

        return pontuacaoMaxima;
    }
    public void setPontuacaoMaxima(int pontuacaoMaxima){

        this.pontuacaoMaxima = pontuacaoMaxima;
    }

    public void AdicionarEstudante(Estudante newEstudante){

        this.totalEstudantes++;

        if(estudanteVencedor == null || newEstudante.getPontos() > pontuacaoMaxima){

            estudanteVencedor = newEstudante;
            pontuacaoMaxima = estudanteVencedor.getPontos();
        }
    }

    public void ExibirVencedor(){

        System.out.println("O(A) Vencedor(a) é "+estudanteVencedor.getNome());
        System.out.println("Com "+estudanteVencedor.getPontos()+" pontos");
    }
}
