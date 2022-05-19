#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    int n;

    do{
        printf("Insira um número: ");
        scanf("%d", &n);
        if(n>0){
            printf("%d é positivo\n", n);
        } else if(n<0){
            printf("%d é negativo\n", n);
        } else {
            return 0;
        }
    }while(n!=0);

    return 0;
}