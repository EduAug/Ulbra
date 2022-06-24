#include <stdio.h>
#include <math.h>
#include <windows.h>


int main(){
	int V[8], x, y, x1, y1, fin;
	
    printf("Insira uma sequência de 8 numerais, sem ordem específica: \n");
    for (int i=1; i < 9; i++){
        printf("Insira um número:\n ");
        scanf("%d%*c", &V[i]);
    }
    
	printf("Insira a primeira posição: \n");
	scanf("%d%*c", &x);
        if (x>8){
            printf("Posição inválida, encerrando");
            return 0;
    }
	printf("Insira a segunda posição: \n");
    scanf("%d%*c", &y);
        if (y>8){
            printf("Posição inválida, encerrando");
            return 0;
    }

    x1=V[x];
    y1=V[y];
	
    fin=x1+y1;
    printf("A soma dos números nas posições %d e %d é %d", x, y, fin);


	return 0;
}
