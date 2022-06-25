#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float sal, salFin;
  float comSol, valVen;
  printf("Informe o valor do salário \nR$");
  scanf("%f%*c", &sal);
  printf("Informe o valor total das vendas realizadas \nR$");
  scanf("%f%*c", &valVen);
  comSol=valVen*0.04;
  printf("O funcionário recebeu R$%.2f em comissão \n", comSol);
  salFin=(valVen*0.04)+sal;
  printf("O funcionário receberá R$%.2f como salário", salFin);
  
  return 0;
}