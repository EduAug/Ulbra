import java.lang.reflect.Array;

public class Main {
    public static void main(String[] args){

        Animal leo = new Leao("Simba");
        Animal mac = new Macaco("Jake");
        Animal pen = new Pinguim("Capitão");

        Animal[] anml = new Animal[3];

        anml[0] = leo;
        anml[1] = mac;
        anml[2] = pen;

        for (int i = 0; i < 3; i++){
            anml[i].fazerSom();
        }
    }
}