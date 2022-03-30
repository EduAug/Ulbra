#include <stdio.h>
#include <math.h>

int main()
{
    float areacirc, raio, pot;
    printf("Valor do raio:\n");
    scanf("%f%*c", &raio);
    pot=pow(raio,2); /*Dava pra ter feito simplesmente (raio*raio), mas cadê a graça nisso*/
    areacirc = 3.1415*pot;
    printf("Area do circulo:\n");
    printf("%.3f", areacirc);

    return 0;
}