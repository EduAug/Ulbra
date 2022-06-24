#include <stdio.h>
#include <math.h>


int main(){
	int val[6], i;
	
	
	for (i = 0; i<6; i++){
		printf("Insira o valor: \n");
		scanf("%d%*c", &val[i]);
	}
	
	
	for (i = 0; i<6; i++){
		printf("Valor digitado em %d : %d \n", i+1, val[i]);
	}
	
	
	return 0;
}
