public class Main {
    public static void main(String[] args) {
        Voador bird = new Passaro();
        Voador plane = new Aviao();
        Voador sm = new Superman();

        bird.decolar();
        plane.decolar();

        bird.voar();
        plane.voar();

        sm.decolar();
        bird.aterrar();
        plane.aterrar();

        sm.voar();
        sm.aterrar();
    }
}