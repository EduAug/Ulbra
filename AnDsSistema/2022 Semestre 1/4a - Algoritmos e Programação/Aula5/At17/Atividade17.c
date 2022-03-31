#include <stdio.h>

int main(){
    float salario, cheq1, cheq2, cpmfCh1, cpmfCh2, salAt;
    printf("Insira a quantia depositada: \n");
    scanf("%f%*c", &salario);
    printf("Valor do primeiro cheque: \n");
    scanf("%f%*c", &cheq1);
    printf("Valor do segundo cheque: \n");
    scanf("%f%*c", &cheq2);
    cpmfCh1=cheq1*0.38/100;
    cpmfCh2=cheq2*0.38/100;
    salAt=salario-cheq1-cpmfCh1-cheq2-cpmfCh2;
    printf("Seu saldo atual consta R$ %.2f \n", salAt);

    return 0;
}