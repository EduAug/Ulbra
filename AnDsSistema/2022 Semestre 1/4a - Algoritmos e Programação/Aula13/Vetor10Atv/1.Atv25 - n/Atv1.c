#include <stdio.h>
#include <math.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Portuguese");
	int maior, i=0;
	float N[4], D[4];
	
	printf("Insira 15 números\n");
	for(i=0;i<=3;i++){
		scanf("%f%*c", &N[i]);
		maior=N[i];
	}
	
	
	for(i=0;i<=3;i++){
		if(N[i]<maior){
			
			D[i]=N[i]/maior;
			printf("%d na divis\n", maior);
			
		} else if(N[i]>maior){
			
			maior=N[i];
			D[i]=N[i]/maior;
			i--;
			printf("%d na troca\n", maior);
			
		}
	}
	
	printf("Os números divididos pelo maior são:\n");
	
	for(i=0;i<=3;i++){
		printf("%.2f\n",D[i]);
	}
	
	
	
	return 0;
}
