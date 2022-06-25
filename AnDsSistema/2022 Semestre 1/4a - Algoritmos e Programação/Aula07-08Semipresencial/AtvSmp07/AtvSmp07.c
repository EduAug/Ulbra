#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float add, sal;
    printf("Insira seu salário: \n");
    scanf("%f%*c", &sal);
    if(sal<500){
        add=sal+((sal*30)/100);
        printf("Parabéns, seu novo salário é de $%.2f", add);
    }
    if(sal>=500){
        printf("Seu salário não se enquadra na faixa de aumento, e permanece $%.2f", sal);
    }

    return 0;
}