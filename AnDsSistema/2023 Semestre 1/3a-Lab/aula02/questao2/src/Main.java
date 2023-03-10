public class Main {
    public static void main(String[] args) {
        int cont1 = 0;
        int som1 = 10;
        int cont2 = 1;
        int som2 = 0;
        int cont3 = 0;
        int som3 = 0;

        System.out.println("Comando 1");
        while (cont1 <= 15){
            System.out.println(som1);
            som1++;
            cont1++;
        }
        System.out.println("Comando 2");
        while (cont2 <= 100){
            som2+=cont2;
            cont2+=2;
        }
        System.out.println(som2);
        System.out.println("Comando 3");


        while(som3 < 100){
            System.out.println(cont3);
            cont3++;
            som3+=cont3;
        };
        System.out.println("Comando 4");

        for(int i=0;i<=10;i++){
            System.out.println(i*9);
        }
    }
}