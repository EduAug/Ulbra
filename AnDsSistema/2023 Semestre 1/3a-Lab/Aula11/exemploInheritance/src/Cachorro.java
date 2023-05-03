public class Cachorro extends Animal{

    String raca;

    void Som(){

        System.out.println("Woof");
    }

    void Mover(){

        super.Mover();
        System.out.println("Correndo");
    }
}
