public class Main{

    public static void main(String[] args){

        Contador c1 = new Contador();
        Contador c2 = new Contador();

        //c1.contador;
        Contador.contador++;
        System.out.println(c1.contador);

        //c2.contadois++;
        System.out.println(c2.contadois);

        Contador.Internal I = new Contador.Internal();
        I.MetodoExterno();
    }
}