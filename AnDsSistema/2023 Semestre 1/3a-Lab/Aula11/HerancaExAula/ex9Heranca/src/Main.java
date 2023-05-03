public class Main {
    public static void main(String[] args){

        Pessoa prsn = new Pessoa();
        Cliente clnt = new Cliente();

        prsn.nome = "Ky";
        prsn.endereco = "Illyria";

        clnt.nome = prsn.nome;
        clnt.endereco = "South Chipp";
        clnt.numeroCartao = "ABCD 5678 IJKL 3456";

        System.out.println(prsn.nome+" "+prsn.endereco);
        System.out.println(clnt.nome+" "+clnt.endereco+" "+clnt.numeroCartao);
    }
}