#include <stdio.h>

int main() {
  float hTrab, valMini, valHorT,valSalB, imp, valLiq;
  printf("Declare o total de horas trabalhadas: \n");
  scanf("%f%*c", &hTrab);
  printf("Declare o valor do salário mínimo: \n");
  scanf("%f%*c", &valMini);
  valHorT=valMini/2;
  valSalB=valHorT*hTrab;
  imp=valSalB*3/100;
  valLiq=valSalB-imp;
  printf("O valor do salário líquido é de R$ %.2f \n", valLiq);
  
  return 0;
}