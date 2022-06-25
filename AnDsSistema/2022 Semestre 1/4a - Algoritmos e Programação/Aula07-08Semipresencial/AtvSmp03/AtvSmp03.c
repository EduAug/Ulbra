#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);

    float num1, num2;
    printf("Insira os números: \n");
    scanf("%f%*c", &num1);
    scanf("%f%*c", &num2);
    printf("O menor número é ");
    if(num1<num2){
        printf("%.0f", num1);
    }
    if(num2<num1){
        printf("%.0f", num2);
    }
    if(num1==num2){
        printf("nenhum, eles são iguais");
    }

    return 0;
}