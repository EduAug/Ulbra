#include <stdio.h>
#include <math.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float lado, are1;
  printf("Informe a medida do lado \n");
  scanf("%f%*c", &lado);
  are1=pow(lado,2);
  printf("A área do quadrado é %.2f \n", are1);
  
  return 0;
}