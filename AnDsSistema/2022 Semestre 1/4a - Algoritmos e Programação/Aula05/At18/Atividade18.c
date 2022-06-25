#include <stdio.h>

int main(){
    float saco, gatoServ, gatoCome, finalSema;
    printf("Insira o peso do saco de ração, em kg\n");
    scanf("%f%*c", &saco);
    printf("Insira quanto é servido aos gatos, em g\n");
    scanf("%f%*c", &gatoServ);
    gatoCome=(gatoServ/1000)*2;
    finalSema=saco-gatoCome*5;
    if (finalSema<=0)
    {
        printf("Não sobra ração no saco\n");
    }else if (finalSema>0)
    {
        printf("Ao final da semana sobram %.2f kg no saco\n", finalSema);
    }
    return 0;
}