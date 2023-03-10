public class Main {
    public static void main(String[] args) {
        int x = 10;
        int parimp = x%2;
        boolean isPair = false;
        // Única forma que achei pra integrar um Switch ¯\_(ツ)_/¯
        switch(parimp){
            case 0:
                isPair = true;
                break;
            case 1:
                isPair = false;
                break;
            default:
                break;
        }

        if (isPair){
            System.out.println(x +" é par, adicionar 5 e somar consigo");
            while(x<1000){
                x+=5;
                System.out.println(x);
                x+=x;
                System.out.println(x);
            }
        } else {
            System.out.println(x +" é impar, multiplicar por 2");
            while(x<1000){
                System.out.println(x*=2);
            }
        }
    }
}