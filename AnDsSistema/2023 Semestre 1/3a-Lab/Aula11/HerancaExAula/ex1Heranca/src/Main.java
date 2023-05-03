public class Main {
    public static void main(String[] args){

        Funcionario func1 = new Funcionario();
        Funcionario tesfunc2 = new Funcionario();
        Pessoa pes1 = new Pessoa();
        // func1.nome = "Fred"; //Não funciona com Pessoa possuindo atributos privados
        func1.nome = "Freddy M.";
        func1.idade = 37;
        func1.cargo = "Cantor";

        pes1.nome = "Paul";
        pes1.idade = 32;

        tesfunc2.nome = pes1.nome;
        tesfunc2.idade = pes1.idade;;
        tesfunc2.cargo = "Guitar";
    }
}