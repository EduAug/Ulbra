#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    int n, ext;

    
    for (int i=0;i<10;i++){  
        printf("Insira um número:\n");
        scanf("%d%*c", &n);
        if (n%2 == 0){
            printf("O número é par\n");
            printf("\n");
        }else if(n%2!=0){
            printf("O número é ímpar\n");
            printf("\n");
        }
    }


    return 0;
}