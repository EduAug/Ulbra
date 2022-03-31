#include <stdio.h>
#include <math.h>

int main() 
{
  float X, Y, xey, yex;
  printf("Insira o primeiro número:\n");
  scanf("%f%*c", &X);
  printf("Insira o segundo número:\n");
  scanf("%f%*c", &Y);
  xey=pow(X,Y);
  printf("Primeiro elevado ao segundo: %.0f\n", xey);
  yex=pow(Y,X);
  printf("Segundo elevado ao primeiro: %.0f\n", yex);

  return 0;
}