public class Atacante extends Jogador{

    @Override
    public String atacar(){

        return "O atacante atacou, quem diria";
    }

    @Override
    public String defender(){

        return "O atacante não pôde fazer nada em respeito à defesa da equipe";
    }
}
