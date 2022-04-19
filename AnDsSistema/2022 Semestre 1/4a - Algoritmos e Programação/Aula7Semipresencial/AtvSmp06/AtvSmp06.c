#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float num1, num2, esc;
    float elv, sqr1, sqr2, cub1, cub2;
    printf("Insira dois números: \n");
    scanf("%f%*c", &num1);
    scanf("%f%*c", &num2);
    printf("Selecione uma ação para executar os números: \n");
    printf("1 - Elevar o primeiro ao segundo \n");
    printf("2 - Calcular a raíz quadrada dos números \n");
    printf("3 - Calcular a raíz cúbica dos números \n");
    scanf("%f%*c", &esc);
    if(esc==1){
        elv=pow(num1, num2);
        printf("O primeiro número elevado ao segundo resulta em %f", elv);
    }
    if(esc==2){
        sqr1=sqrt(num1);
        sqr2=sqrt(num2);
        printf("A raíz quadrada do primeiro número- %.2f \n", sqr1);
        printf("A raíz quadrada do segundo número- %.2f \n", sqr2);
    }
    if(esc==3){
        cub1=cbrt(num1);
        cub2=cbrt(num2);
        printf("A raíz cúbica do primeiro número- %.2f \n", cub1);
        printf("A raíz cúbica do segundo número- %.2f \n", cub2);
    }
    if(esc<=0 || esc>3){
        printf("Opção não suportada, encerrando \n");
    }


    return 0;
}