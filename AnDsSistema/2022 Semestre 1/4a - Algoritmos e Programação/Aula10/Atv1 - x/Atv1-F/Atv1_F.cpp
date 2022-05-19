#include <stdio.h>
#include <math.h>

int main(){
	int n, som;
	
	som=0;	
	for(int i=0; i<=9;i++){
	printf("Digite um número \n");
	scanf("%d%*c", &n);
	som=n+som;
	}
	printf("A soma é: %d", som);
	
	return 0;
}
