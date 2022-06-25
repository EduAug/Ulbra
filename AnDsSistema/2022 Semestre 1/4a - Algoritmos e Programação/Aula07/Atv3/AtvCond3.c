#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float num1, num2;
	
	printf("Insira o primeiro número \n");
	scanf("%f%*c", &num1);
	printf("Insira o segundo número \n");
	scanf("%f%*c", &num2);
	if (num1>num2){
		printf("O número maior é %.2f ", num1);
	}
	if (num2>num1){
		printf("O número maior é %.2f ", num2);
	}
	if (num1==num2){
		printf("Os números são iguais");
	}
	
	return 0;
}
