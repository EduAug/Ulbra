#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);
    
    float medA, medB, totComo, watComo;
    
    printf("Insira a primeira medida do cômodo: ");
    scanf("%f%*c", &medA);
    printf("Insira a segunda medida do cômodo: ");
    scanf("%f%*c", &medB);
    totComo=(medA*medB);
    watComo=(totComo*18);
	
	printf("Para esse cômodo de %.2f m quadrados, serão necessários %.2f W de energia", totComo, watComo);	
	
	
	return 0;
}
