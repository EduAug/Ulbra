#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    int i;
    float V[15], med, n=0;

    
    printf("Insira a nota da prova dos 15 alunos:\n");
        for (i=0; i<15;i++){
                scanf("%f%*c", &V[i]);
            if (V[i]<=10 && V[i]>=0){
                n+=V[i];
                printf("%f\n", n);
            } else {
                printf("Número inválido, reinsira uma nota válida (Número positivo, menor ou igual a 10)\n");
                i--;
            }
        }
    
    med=(n/15);

    printf("A média da turma é aproximadamente %.2f\n", med);

    return 0;
}