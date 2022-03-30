#include <stdio.h>

int main()
{

  float n1, n2, n3, n4, soma;
  printf("Valor de n1:\n");
  scanf("%f%*c", &n1);
  printf("Valor de n2:\n");
  scanf("%f%*c", &n2);
  printf("Valor de n3:\n");
  scanf("%f%*c", &n3);
  printf("Valor de n4:\n");
  scanf("%f%*c", &n4);
  soma = n1 + n2 + n3 + n4;
  printf("%.2f", soma);
  return 0;
}