#include <stdio.h>

int main()
{

    float n1, p1, n2, p2, n3, p3, media_final;
    printf("Valor da nota 1:\n");
    scanf("%f%*c", &n1);
    printf("Valor do peso 1:\n");
    scanf("%f%*c", &p1);

    printf("Valor da nota 2:\n");
    scanf("%f%*c", &n2);
    printf("Valor do peso 2:\n");
    scanf("%f%*c", &p2);

    printf("Valor da nota 3:\n");
    scanf("%f%*c", &n3);
    printf("Valor do peso 3:\n");
    scanf("%f%*c", &p3);

    media_final = (n1 * p1 + n2 * p2 + n3 * p3) / (p1 + p2 + p3);
    printf("Valor de media:\n");
    printf("%.2f", media_final);
    return 0;
}