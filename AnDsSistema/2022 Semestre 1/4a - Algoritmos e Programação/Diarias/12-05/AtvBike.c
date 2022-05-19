#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float totBike, par, qtdParc;

    totBike=18999;
    printf("Insira quanto será pago por parcela:\n");
    scanf("%f%*c", &par);
    qtdParc=/*ceil(*/totBike/par/*)*/;
    //printf("%f\n", qtdParc);
    printf("Sendo pago R$ %.2f por parcela, a bike pode ser feita em %.0f vezes (Com alguns juros).", par, qtdParc);

    
    return 0;
}