#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float sal, add, sal_fina;
	printf("Insira seu salário- $");
	scanf("%f%*c", &sal);
	if(sal<=300){
		add=(sal*50)/100;
		sal_fina=sal+add;
		printf("Seu salário reajustado é $%.2f", sal_fina);
	}
	if(sal>300 && sal<=500){
		add=(sal*40)/100;
		sal_fina=sal+add;
		printf("Seu salário reajustado é $%.2f", sal_fina);
	}
	if(sal>500 && sal<=700){
		add=(sal*30)/100;
		sal_fina=sal+add;
		printf("Seu salário reajustado é $%.2f", sal_fina);
	}
	if(sal>700 && sal<=800){
		add=(sal*20)/100;
		sal_fina=sal+add;
		printf("Seu salário reajustado é $%.2f", sal_fina);
	}
	if(sal>800 && sal<=1000){
		add=(sal*10)/100;
		sal_fina=sal+add;
		printf("Seu salário reajustado é $%.2f", sal_fina);
	}
	if(sal>1000){
		add=(sal*5)/100;
		sal_fina=sal+add;
		printf("Seu salário reajustado é $%.2f", sal_fina);
	}

	return 0;
}
