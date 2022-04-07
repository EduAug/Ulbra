#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float nm1, nm2;
  float div12;
  printf("Informe o primeiro número \n");
  scanf("%f%*c", &nm1);
  printf("Informe o segundo número \n");
  scanf("%f%*c", &nm2);
  while (nm2==0) {
    printf("Número invalido insira novo número \n");
    scanf("%f%*c", &nm2);
      }
  div12=nm1/nm2;
  printf("A divisão dos números é %.3f \n", div12);
  
  return 0;
}