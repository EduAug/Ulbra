#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float sal, add;
    printf("Insira seu sálario para continuar- $");
    scanf("%f%*c", &sal);
    if(sal<=300){
        add=sal+((sal*35)/100);
        printf("Parabéns, seu novo salário é de $%.2f", add);
    }
    if(sal>300){
        add=sal+((sal*15)/100);
        printf("Parabéns, seu novo salário é de $%.2f", add);
    }

    return 0;
}