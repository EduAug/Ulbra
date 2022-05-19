#include <stdio.h>
#include <math.h>

int main(){
	int num, som, i=0;
	
	som=0;
	
	while(i<10){
		printf("Insira um número\n");
		scanf("%d%*c", &num);
		som=num+som;
		i++;
	}
	printf("A soma é %d", som);
	
	return 0;
}
