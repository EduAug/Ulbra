#include <stdio.h>
#include <math.h>
#include <locale.h>
#include <stdlib.h>
#include <time.h>

int main(){
	
	int num[100];
	int i=0,cont=0, locEsp=0, opc;
	int mai=0;
	srand(time(NULL));
	setlocale(LC_ALL, "Portuguese");
	
	for(i=0;i<100;i++){
		num[i]=(rand()%1000);
		cont+=1;
		if(num[i]==999){
			locEsp=1;
			printf("999 detectado\n");
			break;
		}
	}
	
	
	while(opc!=5){
		if(locEsp=1){
			printf("Escolha uma op��o:\n");
			printf("1-Exibir vetor\n2-Exibir vetor reverso\n3-Exibir maior n�mero\n4-Exibir quantia de n�meros\n5-Encerrar\n");
			scanf("%d%*c", &opc);
		} else if (locEsp=0){
			pritnf("999 n�o encontrado, escolha uma op��o:\n");
			printf("1-Exibir vetor\n2-Exibir vetor reverso\n3-Exibir maior n�mero\n4-Exibir quantia de n�meros\n5-Encerrar\n");
			scanf("%d%*c", &opc);
		}
		switch (opc){
			case 1:
				for(i=0;i<cont-1;i++){
					printf("%d\t", num[i]);
				}
				printf("\n");
				break;
				
			case 2:
				for(i=cont-1;i>=0;i--){
					printf("%d\t", num[i]);
				}
				printf("\n");
				break;
				
			case 3:
				for(i=0;i<cont;i++){
					if(num[i]>mai){
						mai=num[i];
					}
				}
				printf("O maior n�mero do vetor � %d\n", mai);
				break;
				
			case 4:
				printf("Foram sorteados %d n�meros para achar o '999' \n", cont);
				break;
			
			case 5:
				printf("Encerrando...\n");
				break;	
			
			default:
				printf("Op��o n�o suportada\n");
				break;
		}	
	}
	
	
	
	return 0;
}
