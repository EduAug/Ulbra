public class Main {
    public static void main(String[] args) {

        Carro c1 = new Carro("Vermelho", 2008,37049);
        Carro c2 = new Carro();
        Carro c3 = new Carro(2014,10928);
        c2.setCor("Lantejoula");

        System.out.println(c1.getCor());
        System.out.println(c2.getCor());
        System.out.println(c3.getCor());
    }
}