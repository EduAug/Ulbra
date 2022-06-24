#include <stdio.h>
#include <math.h>
#include <locale.h>
#include <string.h>

int main(){

    int vetor[10], numero, cont, posicao = 0, i=0;
        //erro tamanho vetor

    while(posicao<10){
        scanf("%d", &numero);
                //erro &

        if(posicao==0){
            vetor[posicao]=numero;
            printf("%d\n", vetor[i]);
                        //erro i não declarado
            posicao++;
        }

        else{

            for(cont=0;(cont<posicao)&&(vetor[cont]!=numero);cont++);
            if (cont>=posicao){
                vetor[posicao] = numero;
                printf("%d\n", vetor[posicao]);
                posicao++;
            }
        }
    }
    return 0;
}