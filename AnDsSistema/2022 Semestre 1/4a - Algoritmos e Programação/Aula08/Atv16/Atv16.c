#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float pre_atul, cod_prod, val_disc, val_fina;
	printf("Insira o preço atual do produto e seu código (Numérico, em ordem): \n$");
	scanf("%f%*c $", &pre_atul);
	scanf("%f%*c", &cod_prod);
	if(pre_atul<=30){
		printf("O produto código %.0f não recebe desconto", cod_prod);
	}
	if(pre_atul>30 && pre_atul<=100){
		val_disc=(pre_atul*10)/100;
		val_fina=pre_atul-val_disc;
		printf("O produto código %.0f recebe desconto de $%.2f e passa a custar $%.2f", cod_prod, val_disc, val_fina);
	}
	if(pre_atul>100){
		val_disc=(pre_atul*15)/100;
		val_fina=pre_atul-val_disc;
		printf("O produto código %.0f recebe desconto de $%.2f e passa a custar $%.2f", cod_prod, val_disc, val_fina);
	}

	return 0;
}
