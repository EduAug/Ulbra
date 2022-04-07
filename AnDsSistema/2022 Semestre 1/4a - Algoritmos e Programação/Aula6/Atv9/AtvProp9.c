#include <stdio.h>
#include <windows.h>

int main (){
    UINT CPAGE_UTF8=65001;
    SetConsoleOutputCP(CPAGE_UTF8);

  float bas1, bas2, alt;
  float areTrap;
  printf("Informe a medida da base maior \n");
  scanf("%f%*c", &bas1);
  printf("Informe a medida da base menor \n");
  scanf("%f%*c", &bas2);
  printf("Informe a medida da altura do trapézio \n");
  scanf("%f%*c", &alt);
  areTrap=((bas1+bas2)*alt)/2;
  printf("A área do trapézio é %.2f \n", areTrap);
  
  return 0;
}