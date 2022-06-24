#include <stdio.h>
#include <math.h>
#include <locale.h>


int main(){
	setlocale(LC_ALL, "Portuguese");
	int Cod[10], Qtd[10], i=0, codCli; //sv
	int CodProd, QtdProd; //client
	int CodIne=0; //?
	
	
	int TST=3;
	
	for(i=0;i<10;i++){
	printf("Insira o c�digo do produto:\n");
	scanf("%d%*c", &Cod[i]);
	printf("Insira o quantia do produto %d em estoque:\n", Cod[i]);
	scanf("%d%*c", &Qtd[i]);
	}
	
	do{
		printf("Insira o c�digo do cliente:\n");
		scanf("%d%*c", &codCli);
		if(codCli!=0){
			printf("Insira o c�digo do produto que o cliente %d deseja comprar:\n", codCli);
			scanf("%d%*c", &CodProd);
			for(i=0;i<10;i++){
				if(CodProd==Cod[i]){
					CodIne=1;
					printf("Insira a quantia do produto %d a ser comprada:\n", CodProd);
					scanf("%d%*c", &QtdProd);
					if(QtdProd<=Qtd[i]){
						printf("Pedido atendido! Obrigado, volte sempre\n");
						Qtd[i]== Qtd[i]-QtdProd;
					} else {
						printf("Estoque em falta, no momento temos %d dispon�veis do produto %d", Qtd[i], Cod[i]);
					}
				}
			}
			if(CodIne!=1){
					printf("Produto inexistente!\n");
			}
		}
		
	}while(codCli!=0);
	
	printf("Estoque atualizado\n");
	
	for(i=0;i<10;i++){
		printf("Produto # %d | Quantia # %d\n", Cod[i], Qtd[i]);		
	}
	
	
	
	return 0;
}
