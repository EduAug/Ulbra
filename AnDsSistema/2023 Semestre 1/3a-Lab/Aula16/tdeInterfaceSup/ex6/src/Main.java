public class Main {
    public static void main(String[] args) {
        Animal dog = new Cachorro();
        Animal cat = new Gato();
        Animal ellie = new Elefante();

        dog.comer();
        dog.dormir();

        cat.comer();
        cat.dormir();

        ellie.comer();
        ellie.dormir();
    }
}