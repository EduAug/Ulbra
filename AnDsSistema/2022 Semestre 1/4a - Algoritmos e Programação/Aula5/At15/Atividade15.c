#include <stdio.h>

int main() {
    float prFab, lucDis, impFab; //Custos de entrada
    float valDis, valImp, prFin; //Valores de saída
    printf("Insira o preço de fábrica:\n");
    scanf("%f%*c", &prFab);
    printf("Porcentagem de lucro do distribuidor:\n");
    scanf("%f%*c", &lucDis); //Percentual
    printf("Insira o valor dos impostos de fábrica:\n");
    scanf("%f%*c", &impFab); //Percentual
    valDis=prFab*(lucDis/100);
    valImp=prFab*(impFab/100);
    prFin=valImp+valDis+prFab;
    printf("O distribuidor recebe %.2f de lucro\n", valDis);
    printf("O produto possui taxação de %.2f \n", valImp);
    printf("O produto chega ao comprador custando %.2f\n", prFin);

    return 0;
}