#include <stdio.h>
#include <math.h>
#include <windows.h>


int main(){
	int N[10], R[10], quad, i;
	
	for (i = 0; i<10; i++){
		printf("Insira um número: \n");
		scanf("%d%*c", &N[i]);
		R[i]=N[i]*N[i];
	}
	
	for (i = 0; i<10; i++){
		printf("O número inserido foi %d e seu quadrado é %d\n", N[i], R[i]);
	}


	return 0;
}
