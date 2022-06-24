#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);
    
    float salFixo, qtdCarr, com, salFina;
    
    printf("Insira o valor do salário: ");
    scanf("%f%*c", &salFixo);
    printf("Insira a quantia de carros vendidos: ");
    scanf("%f%*c", &qtdCarr);
    com=(salFixo*10/100)*qtdCarr;
    salFina=salFixo+com;
	printf("O salário do funcionário é R$ %.2f , a comissão totaliza R$ %.2f", salFina, com);
	
	return 0;
}
