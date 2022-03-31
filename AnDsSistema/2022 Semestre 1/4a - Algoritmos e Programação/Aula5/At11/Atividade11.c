#include <stdio.h>
#include <math.h>

int main()
{
  float X, Xquad, Xcubo, Xrzq, Xrzc;
  printf("Número:\n");
  scanf("%f%*c",&X);
  Xquad=pow(X,2);
  printf("Número ao quadrado: %.0f\n", Xquad);
  Xcubo=pow(X,3);
  printf("Número ao cubo: %.0f\n", Xcubo);
  Xrzq=sqrt(X);
  printf("Raíz quadrada do número: %f\n", Xrzq);
  Xrzc=cbrt(X);
  printf("Raíz cúbica do número: %f\n", Xrzc);

  return 0;
}