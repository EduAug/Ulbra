#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float nm1, nm2, sub12;
  printf("Informe o primeiro número \n");
  scanf("%f%*c", &nm1);
  printf("Informe o segundo número \n");
  scanf("%f%*c", &nm2);
  sub12=nm1-nm2;
  printf("A subtração do primeiro pelo segundo é %.0f \n", sub12);
  
  return 0;
}