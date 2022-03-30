#include <stdio.h>

int main()
{

    float salario, aumento, novosalario;
    printf("Valor do salario (antigo):\n");
    scanf("%f%*c", &salario);
    aumento = salario * 25 / 100;
    novosalario = salario + aumento;
    printf("Valor do salario (novo):\n");
    printf("R$%.2f", novosalario);
    return 0;
}