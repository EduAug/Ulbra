public class Main {
    public static void main(String[] args){

        Pessoa per = new Pessoa();
        Estudante est = new Estudante();

        per.Andar();
        per.Falar();

        System.out.println(" ");

        est.Falar();
        est.Andar();
        est.Estudar();
    }
}