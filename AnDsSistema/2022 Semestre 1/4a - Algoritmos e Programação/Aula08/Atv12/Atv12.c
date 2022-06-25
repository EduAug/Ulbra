#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float sal_brut, gra, imp, sal_fina;
	printf("Insira seu salário- $");
	scanf("%f%*c", &sal_brut);
	if(sal_brut<=350){
		gra=sal_brut+100;
		imp=(sal_brut*7)/100;
		sal_fina=gra-imp;
		printf("\nSeu salário é $%.2f", sal_fina);
	}
	if(sal_brut>350 && sal_brut<=600){
		gra=sal_brut+75;
		imp=(sal_brut*7)/100;
		sal_fina=gra-imp;
		printf("\nSeu salário é $%.2f", sal_fina);
	}
	if(sal_brut>600 && sal_brut<=900){
		gra=sal_brut+50;
		imp=(sal_brut*7)/100;
		sal_fina=gra-imp;
		printf("\nSeu salário é $%.2f", sal_fina);
	}
	if(sal_brut>900){
		gra=sal_brut+35;
		imp=(sal_brut*7)/100;
		sal_fina=gra-imp;
		printf("\nSeu salário é $%.2f", sal_fina);
	}

	return 0;
}
