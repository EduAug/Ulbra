#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float nm1, nm2, nm3;
  int mult123;
  printf("Informe o primeiro número \n");
  scanf("%f%*c", &nm1);
  printf("Informe o segundo número \n");
  scanf("%f%*c", &nm2);
  printf("Informe o terceiro número \n");
  scanf("%f%*c", &nm3);
  mult123=nm1*nm2*nm3;
  printf("A multiplicação dos números é %.2d \n", mult123);
  
  return 0;
}
