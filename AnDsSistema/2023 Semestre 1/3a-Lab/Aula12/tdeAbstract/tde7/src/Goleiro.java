public class Goleiro extends Jogador{

    @Override
    public String atacar(){

        return "O goleiro... marcou!";
    }

    @Override
    public String defender(){

        return "Não passa nada, salva pelas últimas 3 bolas, mas o nada não passa";
    }
}
