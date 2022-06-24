#include <stdio.h>
#include <math.h>
#include <locale.h>


int main(){
	setlocale(LC_ALL, "Portuguese");
	int Cod[14], i=0, con=0, esp[14];
	
	
	int TST=3;
	
	printf("Insira 15 números no vetor:\n");
	for(i=0;i<16;i++){
		scanf("%d%*c", &Cod[i]);
		if(Cod[i]==30){
			esp[i]=con;
		}
		con++;
	}

	for(i=0;i<16;i++){
		if(Cod[i]==30){
			printf("Foi detectado um elemento de número 30 na posição %d\n", esp[i]);
		}
	}

	
	
	return 0;
}
