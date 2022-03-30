#include <stdio.h>

int main()
{
    float salario, salariorecebe, grati, impost;
    printf("Valor do salario:\n");
    scanf("%f%*c", &salario);
    grati=salario*5/100;
    impost=salario*7/100;
    salariorecebe=salario+grati-impost;
    printf("Valor final do salario:\n");
    printf("R$%.2f", salariorecebe);

    return 0;
}