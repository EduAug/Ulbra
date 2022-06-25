#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float num1, num2, rzqd, soma, alt;
	
	printf("Escolha uma operação: \n");
    printf("1- Somar dois números \n");
    printf("2- Raíz quadrada de um número \n");
	scanf("%f%*c", &alt);
    if (alt==1){
        printf("Insira o primeiro número- \n");
        scanf("%f%*c", &num1);
        printf("Insira o segundo número- \n");
        scanf("%f%*c", &num2);
        soma=num1+num2;
        printf("A soma de %.1f e %.1f é igual a %.2f \n", num1, num2, soma);
    }
    if (alt==2){
        printf("Insira o número- \n");
        scanf("%f%*c", &num1);
        rzqd=sqrt(num1);
        printf("A raíz quadrada de %.0f é %.2f \n", num1, rzqd);
    }    
	if (alt!=1 && alt!=2){
        printf("Saindo\n");
        printf(". \n");
        printf(". . \n");
        printf(". . .\n");
        printf(". . . .\n");
        printf(". . . . .\n");
        return 0;
    }

	return 0;
}