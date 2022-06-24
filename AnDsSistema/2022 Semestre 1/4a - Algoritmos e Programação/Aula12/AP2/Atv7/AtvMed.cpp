#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	float nota, soma, media;
	soma=0;
	for (int i= 0; i<10; i++){
		printf("Digite a nota:\n");
		scanf("%f%*c", &nota);
		soma=soma+nota;
	}
	media=soma/10;
	printf("A média é:%.2f", media);
	
	return 0;
}
