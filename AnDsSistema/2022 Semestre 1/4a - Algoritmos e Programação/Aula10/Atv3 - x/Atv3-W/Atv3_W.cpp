#include <stdio.h>
#include <math.h>

int main(){
	int p, s;
	
	printf("Insira o primeiro n�mero:\n");
	scanf("%d%*c", &p);
	printf("Insira o segundo n�mero:\n");
	scanf("%d%*c", &s);	
		
	if(p==s){
		printf("Os n�meros s�o iguais, cancela");
		return 0;
	}
	
	printf("Os n�meros �mpares entre %d e %d s�o:\n", p, s);

	while(p<s){
		if(p % 2 != 0){
		printf("%d\n", p);
		}
		p++;
	}
	
	return 0;

}
