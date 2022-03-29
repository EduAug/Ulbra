#include <stdio.h>

int main()
{
    float salario, salariorecebe, impost;
    printf("Valor do salario:\n");
    scanf("%f%*c", &salario);
    impost=salario*10/100;
    salariorecebe=salario+50-impost;
    printf("Valor final do salario:\n");
    printf("R$%.2f", salariorecebe);

    return 0;
}