#include <stdio.h>
#include <math.h>
#include <windows.h>


int main(){
	int V[11], i, mai, men;
	
    for(i=0;i<10;i++){
        printf("Insira um número:\n");
        scanf("%d%*c", &V[i]);
}
    mai=V[0];
    men=V[0];   //não sei se compreendi direito, mas parece que, pra "comparar", o maior
                //e o menor têm de ler todo o vetor, a partir do primeiro, 
                //preferencialmente, e comparar com os demais, alterando o valor no caminho
                // eu acho ¯\_(ツ)_/¯
                // mas também não sei o porquê de não poder atribuir o valor de A[0] lá em cima
                // é por conta do A[0] ainda "não existir"?

    for(i=1;i<10;i++){
        if(V[i]<men){
            men=V[i];            
        }
        if(V[i]>mai){
            mai=V[i];
        }
}
    printf("O menor valor do vetor é %d\n", men);
    printf("O maior valor do vetor é %d", mai);

	return 0;
}
