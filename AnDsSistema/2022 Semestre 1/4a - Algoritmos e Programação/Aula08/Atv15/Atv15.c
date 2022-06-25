#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float val_inve, ren_pmes, ren_fina;
	int tip;
	printf("Escolha o tipo de investimento:\n1 - Poupança\n2 - Fundos de renda fixa\n");
	scanf("%d%*c", &tip);
	printf("Insira o valor do invenstimento: \n");
	scanf("%f%*c", &val_inve);
	switch (tip){
		case 1: 
		ren_pmes=(val_inve*3)/100;
		ren_fina=ren_pmes+val_inve;
		printf("O investimento renderá $%.2f mensalmente", ren_pmes);
			break;
			
		case 2: 
		ren_pmes=(val_inve*4)/100;
		ren_fina=ren_pmes+val_inve;
		printf("O investimento renderá $%.2f mensalmente", ren_pmes);
			break;
			
		default: 
		printf("Opção não suportada, encerrando...");
	}

	return 0;
}
