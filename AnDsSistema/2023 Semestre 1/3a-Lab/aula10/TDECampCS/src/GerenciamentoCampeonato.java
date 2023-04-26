public class GerenciamentoCampeonato {

    public static void main(String[] args) {

        Equipe team1 = new Equipe("1 Thief");
        Equipe team2 = new Equipe("Quiet");
        Equipe team3 = new Equipe("Fofúria");
        Equipe team4 = new Equipe("Camponês");

        System.out.println(" ");
        System.out.println("/// Final de Semana 1 ///");
        System.out.println(" ");

        team1.registrarVitorias();
        team3.registrarDerrotas();
        team2.registrarEmpates();
        team4.registrarEmpates();

        System.out.println("Equipe: "+team1.getNome()+"      | V: "+team1.getVitorias()+"| D: "+team1.getDerrotas()+"| E: "+team1.getEmpates());
        System.out.println("Equipe: "+team2.getNome()+"          | V: "+team2.getVitorias()+"| D: "+team2.getDerrotas()+"| E: "+team2.getEmpates());
        System.out.println("Equipe: "+team3.getNome()+"      | V: "+team3.getVitorias()+"| D: "+team3.getDerrotas()+"| E: "+team3.getEmpates());
        System.out.println("Equipe: "+team4.getNome()+"      | V: "+team4.getVitorias()+"| D: "+team4.getDerrotas()+"| E: "+team4.getEmpates());

        System.out.println(" ");
        System.out.println("/// Final de Semana 2 ///");
        System.out.println(" ");

        team1.registrarEmpates();
        team4.registrarEmpates();
        team3.registrarVitorias();
        team2.registrarDerrotas();

        System.out.println("Equipe: "+team1.getNome()+"      | V: "+team1.getVitorias()+"| D: "+team1.getDerrotas()+"| E: "+team1.getEmpates());
        System.out.println("Equipe: "+team2.getNome()+"          | V: "+team2.getVitorias()+"| D: "+team2.getDerrotas()+"| E: "+team2.getEmpates());
        System.out.println("Equipe: "+team3.getNome()+"      | V: "+team3.getVitorias()+"| D: "+team3.getDerrotas()+"| E: "+team3.getEmpates());
        System.out.println("Equipe: "+team4.getNome()+"      | V: "+team4.getVitorias()+"| D: "+team4.getDerrotas()+"| E: "+team4.getEmpates());
    }
}
