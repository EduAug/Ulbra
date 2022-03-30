#include <stdio.h>

int main()
{
    float areatriang, base, altura;
    printf("Valor da base:\n");
    scanf("%f%*c", &base);
    printf("Valor da altura:\n");
    scanf("%f%*c", &altura);
    areatriang = (base * altura) / 2;
    printf("Area do triangulo:\n");
    printf("%.2f \n", areatriang);

    return 0;
}