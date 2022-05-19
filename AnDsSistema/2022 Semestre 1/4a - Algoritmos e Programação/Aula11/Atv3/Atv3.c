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
        if(n%2==0 && n>0){
            printf("%d é par\n", n);
        } else if(n%2!=0){
            printf("%d é ímpar\n", n);
        } else {
            return 0;
        }
    }while(n>0);

    return 0;
}