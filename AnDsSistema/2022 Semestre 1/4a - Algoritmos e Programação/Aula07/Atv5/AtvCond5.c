#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float num1, num2, num3, num_Random;
	
	printf("Insira três números em ordem crescente \n");
	scanf("%f%*c", &num1);
	scanf("%f%*c", &num2);
	scanf("%f%*c", &num3);
	printf("Insira um número: \n");
	scanf("%f%*c", &num_Random);
	printf("A ordem decrescente dos números é: \n");
	if (num_Random<num1){
		printf("%.0f %.0f %.0f %.0f", num3, num2, num1, num_Random);
}
		else if (num_Random>num1 && num_Random<num2){
		printf("%0.f %0.f %0.f %0.f", num3, num2, num_Random, num1);
}
		else if(num_Random>num2 && num_Random<num3){
		printf("%.0f %0.f %0.f %0.f", num3, num_Random, num2, num1);
}
		else if(num_Random>num3){
		printf("%.0f %.0f %.0f %.0f", num_Random, num3, num2, num1);
}

	return 0;
}
