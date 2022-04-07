#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float pesKg, pesG;
  printf("Informe o peso da pessoa em kg \n");
  scanf("%f%*c", &pesKg);
  pesG=pesKg*1000;
  printf("O peso da pessoa em g é %.0f g\n", pesG);
  
  return 0;
}