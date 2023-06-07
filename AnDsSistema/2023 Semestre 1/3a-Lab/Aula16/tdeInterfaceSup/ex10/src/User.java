public class User implements Persistente{

    String name;
    int idade;


    public void salvar(String _name, int _idade) {
        name = _name;
        idade = _idade;
    }


    public void atualizar(String _name, int _idade, int seletor) {

        switch (seletor){
        case 1:
            name = _name;
            break;
        case 2:
            idade = _idade;
            break;
        case 3:
            name = _name;
            idade = _idade;
            break;
        default:
            System.out.println("Seletor não reconhecido\n(1-Nome\t2-Idade\t3-Ambos)");
            break;
        }
    }


    public void deletar() {
        this.name = null;
        this.idade = 0;
    }


    public void buscar() {
        System.out.println("User: "+name+" Idade: "+idade);
    }
}
