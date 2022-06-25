#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);

    float num1, num2, num3;
    printf("Insira três números: \n");
    scanf("%f%*c", &num1);
    scanf("%f%*c", &num2);
    scanf("%f%*c", &num3);
    printf("O maior número é ");
    if(num1>num2 && num1>num3){
        printf("%.0f", num1);
    }
    if(num2>num1 && num2>num3){
        printf("%.0f", num2);
    }
    if(num3>num1 && num3>num2){
        printf("%.0f", num3);
    }
    if(num1==num2 && num1==num3){
        if(num2==num3){
            printf("nenhum, todos os números são iguais");
        }
    }

    return 0;
}