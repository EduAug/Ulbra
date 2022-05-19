#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    int a, b;

    do{
        printf("Insira o primeiro número: ");
        scanf("%d%*c", &a);
        printf("Insira o segundo número: ");
        scanf("%d%*c", &b);
        if (a>b){
            printf("A ordem %d , %d é decrescente\n", a, b);
        }
        else if (a<b){
            printf("A ordem %d , %d é crescente\n", a, b);
        }
    } while (a!=b);

    return 0;
}