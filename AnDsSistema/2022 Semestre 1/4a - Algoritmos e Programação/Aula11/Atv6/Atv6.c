#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    int senha, i=0;

    do{
        printf("Insira a senha: ");
        scanf("%d%*c", &senha);
        if(senha!=1234){
            printf("Acesso negado, tente novamente . . .\n");
            i=i+1;
        } else {
            i=i+1;
            break;
        }
    }while(senha!=1234);

    printf("Acesso permitido\n");
    printf("Na %dº tentativa", i);

    return 0;
}