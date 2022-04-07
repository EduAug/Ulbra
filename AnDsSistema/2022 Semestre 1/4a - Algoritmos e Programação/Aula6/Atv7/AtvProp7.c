#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float peso, pesFin;
  float pes1, pes2;
  printf("Informe o peso da pessoa \n");
  scanf("%f%*c", &peso);
  pes1=peso+(peso*0.15);
  pes2=peso-(peso*0.2);
  printf("O peso da pessoa será %.2f kg se engordar 15%% \n", pes1);
  printf("O peso da pessoa será %.2f kg se emagrecer 20%% \n", pes2);
  
  return 0;
}