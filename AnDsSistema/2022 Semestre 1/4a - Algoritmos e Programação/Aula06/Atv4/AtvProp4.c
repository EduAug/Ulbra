#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float n1, p1, n2, p2;
  float medPon12, pesTot;
  printf("Informe a primeira nota \n");
  scanf("%f%*c", &n1);
  printf("Informe a segunda nota \n");
  scanf("%f%*c", &n2);
  p1=n1*2;
  p2=n2*3;
  pesTot=2+3;
  medPon12=(p1+p2)/pesTot;
  printf("A média ponderada das notas é %.2f \n", medPon12);
  
  return 0;
}