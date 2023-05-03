public class Gato extends Animal{

    String pelagem;

    void Som(){

        System.out.println("Meow");
    }

    void Mover(){

        super.Mover();
        System.out.println("Saltando");
    }
}
