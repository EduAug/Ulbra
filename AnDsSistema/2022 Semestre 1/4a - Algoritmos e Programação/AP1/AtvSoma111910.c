#include <stdio.h>

int main(){
    int x, soma, f;

    soma=0;
    f=10;
    for(x=1;x<f;x++){
        if(x%2==0){
            f=f-1;
        }
        soma=x+f;
        x++;
        //printf("Valor de x=%d\n",x); /*<- Se o X for ímpar, a soma "dá na mesma"*/
        //printf("Valor da soma=%d\n",soma); /* <- A soma acontece com o valor "novo" do f*/
        //printf("Valor de f=%d\n",f);  /*<- Nos números pares, F vai perder 1*/
    }                                 /* <- Logo, no 10, 11 + 10 dará 19*/

    printf("Valor de x=%d\n",x);
    printf("Valor da soma=%d\n",soma);
    printf("Valor de f=%d\n",f);

    return 0;
}