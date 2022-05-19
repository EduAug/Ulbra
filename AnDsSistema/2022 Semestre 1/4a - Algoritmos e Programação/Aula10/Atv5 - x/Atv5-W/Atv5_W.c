#include <stdio.h>
#include <math.h>

int main(){
    int num, som=0, x=0;

    printf("Insira um número maior que 1\n");
    scanf("%d%*c", &num);

    while (x<=num){
        som=som+x;
        x=x+1;
        printf("%d\n", som);
    }

    printf("O total é %d", som);

    return 0;
}