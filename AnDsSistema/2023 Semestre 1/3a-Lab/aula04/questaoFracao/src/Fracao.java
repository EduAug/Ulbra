import java.text.DecimalFormat;

public class Fracao {

        public void ReturnFracao(String frac1, String frac2){

            String[] sepFrac1 = frac1.split("/",6);
            int num1 = Integer.parseInt(sepFrac1[0]);
            int den1 = Integer.parseInt(sepFrac1[1]);

            String[] sepFrac2 = frac2.split("/",6);
            int num2 = Integer.parseInt(sepFrac2[0]);
            int den2 = Integer.parseInt(sepFrac2[1]);

            ResultFracao(num1,den1,num2,den2);
        }

        public void ResultFracao(int n1, int d1, int n2, int d2){

            DecimalFormat doub3 = new DecimalFormat("0.000");

            int resNum = n1*n2;
            int resDen = d1*d2;

            double doubResNum = resNum;
            double doubResDen = resDen;

            double totalFracao = doubResNum/doubResDen;

            System.out.println("O resultado de "+n1+"/"+d1+" * "+n2+"/"+d2 +" é "+resNum+"/"+resDen +" ("+doub3.format(totalFracao)+")");
        }
}
