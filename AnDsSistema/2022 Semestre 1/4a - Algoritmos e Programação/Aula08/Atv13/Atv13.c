#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float pre_prod, add, pre_fina;
	printf("Insira o pre�o do produto- $");
	scanf("%f%*c", &pre_prod);
	if(pre_prod<=50){
		add=(pre_prod*5)/100;
		pre_fina=add+pre_prod;
		printf("O pre�o de venda do produto � $%.2f", pre_fina);
	}
	if(pre_prod>50 && pre_prod<=100){
		add=(pre_prod*10)/100;
		pre_fina=add+pre_prod;
		printf("O pre�o de venda do produto � $%.2f", pre_fina);
	}
	if(pre_prod>100){
		add=(pre_prod*15)/100;
		pre_fina=add+pre_prod;
		printf("O pre�o de venda do produto � $%.2f", pre_fina);
	}
	if(pre_fina<=80){
		printf(" e sua classifica��o � barato");
	}
	if(pre_fina>80 && pre_fina<=120){
		printf(" e sua classifica��o � normal");
	}
	if(pre_fina>120 && pre_fina<=200){
		printf(" e sua classifica��o � caro");
	}
	if(pre_fina>200){
		printf(" e sua classifica��o � muito cara");
	}
	return 0;
}
