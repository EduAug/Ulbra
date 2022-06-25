#include <stdio.h>

int main() {
    double horas, salMin, horTrab, salBrut, impSal, salPago;
    printf("Defina a quantia de horas trabalhadas:\n");
    scanf("%d%*c",&horas);
    printf("Defina o valor do salário mínimo:\n");
    scanf("%d%*c",&salMin);
    horTrab=salMin/2;
    printf("%d%*c",&horTrab);
    salBrut=horas*horTrab;
    printf("%d%*c",&salBrut);
    impSal=salBrut*3/100;
    printf("%d%*c",&impSal);
    salPago=salBrut-impSal;
    printf("O valor pago será de R$ %d \n",salPago);

    return 0;
}