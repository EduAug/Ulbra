#include <stdio.h>
#include <math.h>

int main(){
	int p, s;
	
	printf("Insira o primeiro número:\n");
	scanf("%d%*c", &p);
	printf("Insira o segundo número:\n");
	scanf("%d%*c", &s);	
		
	if(p==s){
		printf("Os números são iguais, cancela");
		return 0;
	}
	
	printf("Os números ímpares entre %d e %d são:\n", p, s);

	while(p<s){
		if(p % 2 != 0){
		printf("%d\n", p);
		}
		p++;
	}
	
	return 0;

}
