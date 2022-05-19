#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    int i=0;
    float n, m, add=0;

    do{

        printf("Insira a %d nota: ", i+1);
        scanf("%f%*c", &n);
        if(n>=0){
            i++;
            add=add+n;
        }else{
            printf("Compilando notas...\n");
            break;
        }
    }while(n>=0);

    m=add/i;
    printf("A média da turma é %.2f", m);

    return 0;
}