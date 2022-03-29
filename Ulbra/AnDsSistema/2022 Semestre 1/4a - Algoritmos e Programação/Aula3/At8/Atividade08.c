#include <stdio.h>

int main()
{
    float deposito, taxa, rendimento, final;
    printf("Valor do deposito:\n");
    scanf("%f%*c", &deposito);
    printf("Valor da taxa:\n");
    scanf("%f%*c", &taxa);
    rendimento = deposito * taxa / 100;
    final = deposito + rendimento;
    printf("Valor total de rendimento:\n");
    printf("R$%.2f \n", rendimento);
    printf("Valor final do investimento:\n");
    printf("R$%.2f", final);

    return 0;
}