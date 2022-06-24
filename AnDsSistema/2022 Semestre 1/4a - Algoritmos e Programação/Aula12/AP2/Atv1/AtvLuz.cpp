#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);
    
    float medA, medB, totComo, watComo;
    
    printf("Insira a primeira medida do c�modo: ");
    scanf("%f%*c", &medA);
    printf("Insira a segunda medida do c�modo: ");
    scanf("%f%*c", &medB);
    totComo=(medA*medB);
    watComo=(totComo*18);
	
	printf("Para esse c�modo de %.2f m quadrados, ser�o necess�rios %.2f W de energia", totComo, watComo);	
	
	
	return 0;
}
