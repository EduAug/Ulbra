#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);
    
    float salFixo, qtdCarr, com, salFina;
    
    printf("Insira o valor do sal�rio: ");
    scanf("%f%*c", &salFixo);
    printf("Insira a quantia de carros vendidos: ");
    scanf("%f%*c", &qtdCarr);
    com=(salFixo*10/100)*qtdCarr;
    salFina=salFixo+com;
	printf("O sal�rio do funcion�rio � R$ %.2f , a comiss�o totaliza R$ %.2f", salFina, com);
	
	return 0;
}
