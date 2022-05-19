#include <stdio.h>
#include <math.h>

int main(){
   int num, som=0, x=0;

   printf("Insira um número maior que 1\n");
   scanf("%d%*c",&num);
   
   do{
      som=x+som;
      x=x+1;
   }while(x<=num);
      
      
   printf("O total é %d", som);
      
   return 0;
}