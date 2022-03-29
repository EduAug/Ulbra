#include <stdio.h>

int main()
{
    float salario, percaumento, aumento, novosalario;
    printf("Valor do salario (antigo):\n");
    scanf("%f%*c", &salario);
    printf("Percentual de Aumento:\n");
    scanf("%f%*c", &percaumento);
    aumento = salario * percaumento / 100;
    novosalario = salario + aumento;
    printf("Valor do salario (novo):\n");
    printf("R$%.2f", novosalario);

    return 0;
}
