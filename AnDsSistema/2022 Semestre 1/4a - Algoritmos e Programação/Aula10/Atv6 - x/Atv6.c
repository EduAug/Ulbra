#include <stdio.h>
#include <math.h>

int main(){
    int n, ext;

    
    for (int i=0;i<5;i++){  
        printf("Insira um número:\n");
        scanf("%d%*c", &n);
        if (n>0){
            printf("O número é positivo\n");
            printf("---\n");
        }else if(n<0){
            printf("O número é negativo\n");
            printf("---\n");
        }else{
            printf("O número é nulo.\n");
            printf("---\n");
        }
    }

    return 0;
}