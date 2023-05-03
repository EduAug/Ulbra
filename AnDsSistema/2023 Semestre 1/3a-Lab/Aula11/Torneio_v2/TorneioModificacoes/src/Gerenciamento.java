public class Gerenciamento {

    public static void main(String[] args) {

        Equipe team1 = new Equipe("1 Thief");
        Equipe team2 = new Equipe("Quiet");
        Equipe team3 = new Equipe("Fofúria");
        Equipe team4 = new Equipe("Camponês");

        System.out.println(" ");
        System.out.println("/// Final de Semana 1 ///");
        System.out.println(" ");

        team1.registrarVitorias(17,23);
        team3.registrarDerrotas(6,30);
        team2.registrarEmpates(12,4);
        team4.registrarEmpates(12,12);
/*
        System.out.println("Equipe: "+team1.getNome()+"      | V: "+team1.getVitorias()+"| D: "+team1.getDerrotas()+"| E: "+team1.getEmpates()+"| Pts: "+team1.getPontos());
        System.out.println("Equipe: "+team2.getNome()+"          | V: "+team2.getVitorias()+"| D: "+team2.getDerrotas()+"| E: "+team2.getEmpates()+"| Pts: "+team1.getPontos());
        System.out.println("Equipe: "+team3.getNome()+"      | V: "+team3.getVitorias()+"| D: "+team3.getDerrotas()+"| E: "+team3.getEmpates()+"| Pts: "+team1.getPontos());
        System.out.println("Equipe: "+team4.getNome()+"      | V: "+team4.getVitorias()+"| D: "+team4.getDerrotas()+"| E: "+team4.getEmpates()+"| Pts: "+team1.getPontos());
*/
        team1.exibirInformacoes();
        team2.exibirInformacoes();
        team3.exibirInformacoes();
        team4.exibirInformacoes();

        System.out.println(team1.calcularAproveitamento()+"%");
        System.out.println(team2.calcularAproveitamento()+"%");
        System.out.println(team3.calcularAproveitamento()+"%");
        System.out.println(team4.calcularAproveitamento()+"%");

        System.out.println(" ");
        System.out.println("/// Final de Semana 2 ///");
        System.out.println(" ");

        team1.registrarEmpates(9,45);
        team4.registrarEmpates(13,6);
        team3.registrarVitorias(48,96);
        team2.registrarDerrotas(95,7);
/*
        System.out.println("Equipe: "+team1.getNome()+"      | V: "+team1.getVitorias()+"| D: "+team1.getDerrotas()+"| E: "+team1.getEmpates());
        System.out.println("Equipe: "+team2.getNome()+"          | V: "+team2.getVitorias()+"| D: "+team2.getDerrotas()+"| E: "+team2.getEmpates());
        System.out.println("Equipe: "+team3.getNome()+"      | V: "+team3.getVitorias()+"| D: "+team3.getDerrotas()+"| E: "+team3.getEmpates());
        System.out.println("Equipe: "+team4.getNome()+"      | V: "+team4.getVitorias()+"| D: "+team4.getDerrotas()+"| E: "+team4.getEmpates());
*/
        team1.exibirInformacoes();
        team2.exibirInformacoes();
        team3.exibirInformacoes();
        team4.exibirInformacoes();

        System.out.println(team1.calcularAproveitamento()+"%");
        System.out.println(team2.calcularAproveitamento()+"%");
        System.out.println(team3.calcularAproveitamento()+"%");
        System.out.println(team4.calcularAproveitamento()+"%");

    }
}