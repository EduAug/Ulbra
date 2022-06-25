#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float num1, num2, num3;
	
	printf("Insira o primeiro numero \n");
	scanf("%f%*c", &num1);
	printf("Insira o segundo numero \n");
	scanf("%f%*c", &num2);
	printf("Insira o terceiro numero \n");
	scanf("%f%*c", &num3);
	if (num1<num2 && num1<num3){
		printf("A ordem crescente é \n");
		if(num2<num3)
		printf("%.0f %.0f %.0f", num1, num2, num3);
		else{
			printf("%.0f %.0f %.0f", num1, num3, num2);
		}
	}
	if (num2<num1 && num2<num3){
		printf("A ordem crescente é \n");
		if(num1<num3)
		printf("%.0f %.0f %.0f", num2, num1, num3);
		else{
			printf("%.0f %.0f %.0f", num2, num3, num1);
		}
	}
	if (num3<num1 && num3<num2){
		printf("A ordem crescente é \n");
		if(num1<num2)
		printf("%.0f %.0f %.0f", num3, num1, num2);
		else{
			printf("%.0f %.0f %.0f", num3, num2, num1);
		}
	}
	return 0;
}
