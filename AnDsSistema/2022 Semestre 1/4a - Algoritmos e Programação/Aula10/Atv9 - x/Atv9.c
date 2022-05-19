#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    int x, f;

    printf("Insira um número qualquer\n");
    scanf("%d%*c", &x);


    for(int i=1;i<=10;i++){
        f=i*x;
        printf("%d x %d = %d \n", x, i, f);
    }
    


    return 0;
}