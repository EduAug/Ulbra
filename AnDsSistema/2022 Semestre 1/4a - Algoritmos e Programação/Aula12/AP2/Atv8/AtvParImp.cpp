#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    int numero;

        printf("Insira um n�mero: ");
        scanf("%d%*c", &numero);
        if(numero%2==0){
            printf("%d � par\n", numero);
        } else{
            printf("%d � �mpar\n", numero);
}
    return 0;
}
