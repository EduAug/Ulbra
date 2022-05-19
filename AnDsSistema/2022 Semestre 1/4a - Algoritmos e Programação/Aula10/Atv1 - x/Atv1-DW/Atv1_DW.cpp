#include <stdio.h>
#include <math.h>

int main(){
	int num, som, i=0;
		
	som=0;
	
	do{
		printf("Insira o número\n");
		scanf("%d%*c", &num);
		i++;
		som=num+som;
		}while(i<10);

	printf("A soma é %d", som);

	return 0;
}
