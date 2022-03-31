#include <stdio.h>
#include <math.h>

int main() 
{
  float pe, peempol, peemjar, peemilha;
  printf("Insira a medida de pés:\n");
  scanf("%f%*c", &pe);
  peempol=pe*12;
  printf("Conversão de pés em polegadas: %.3f\n", peempol);
  peemjar=pe/3;
  printf("Conversão de pés em jardas: %.3f\n", peemjar);
  peemilha=peemjar/1760;
  printf("Conversão de pés em milhas: %.3f\n", peemilha);

  return 0;
}