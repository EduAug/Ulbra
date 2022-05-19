#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    float fim, a, b;
    char repeat;

    do{
        printf("Insira o primeiro número: ");
        scanf("%f%*c", &a);
        do{

            printf("Insira o segundo número: ");
            scanf("%f%*c", &b);
            if (b == 0){
                printf("Valor inválido\n");
            }
        }while (b == 0);

        fim = a / b;
        printf("O valor da divisão é %.2f\n", fim);


        printf("Deseja realiz um novo cálculo? (S/N)\n");
        scanf("%c%*c", &repeat);

    } while (repeat=='s' || repeat=='S');

    return 0;
}