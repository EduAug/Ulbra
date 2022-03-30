#include <stdio.h>

int main()
{

  float n1, n2, n3, media;
  printf("Valor de n1:\n");
  scanf("%f%*c", &n1);
  printf("Valor de n2:\n");
  scanf("%f%*c", &n2);
  printf("Valor de n3:\n");
  scanf("%f%*c", &n3);
  media = (n1 + n2 + n3) / 3;
  printf("Valor de media:\n");
  printf("%.2f", media);
  return 0;
}