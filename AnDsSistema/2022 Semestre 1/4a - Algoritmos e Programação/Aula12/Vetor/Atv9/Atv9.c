#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    int V[6], P[6], i, p;

    
    printf("Insira 6 números pares:\n");
        for (p=0; p<6;p++){
                scanf("%d%*c", &V[p]);
            if (V[p]%2==0){
            } else {
                printf("Número inválido, insira um número par\n");
                p--;
            }
        }
    printf("A ordem inversa dos números pares inseridos fica:\n");
    for (i=5; i>=0; i--){
        printf("%d\n", V[i]);
    }

    return 0;
}