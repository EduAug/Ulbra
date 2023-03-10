public class Main {
    public static void main(String[] args) {
        int num1 = 0;
        int num2 = 1;
        int temp = 0;
        for(int i=0;i<=15;i++){
            System.out.println(num1);
            temp=num2;
            num2+=num1;
            num1=temp;
        }
    }
}