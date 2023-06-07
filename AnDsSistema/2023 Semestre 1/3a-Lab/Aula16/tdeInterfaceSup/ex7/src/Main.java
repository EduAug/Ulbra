public class Main {
    public static void main(String[] args) {

        Musical guit = new Guitarra();
        Musical pian = new Piano();
        Musical bat = new Bateria();

        guit.tocar();
        guit.pausar();
        guit.parar();

        pian.tocar();
        pian.pausar();
        pian.parar();

        bat.tocar();
        bat.pausar();
        bat.parar();
    }
}