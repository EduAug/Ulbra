#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float p1,pFin;
  printf("Informe o valor do produto \nR$");
  scanf("%f%*c", &p1);
  pFin=p1-(p1*0.10);
  printf("O preço do produto é R$%.2f \n", pFin);
  
  return 0;
}