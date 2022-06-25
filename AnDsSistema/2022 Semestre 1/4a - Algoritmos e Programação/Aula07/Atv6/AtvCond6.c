#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float num, par_Imp;
	printf("Insira um número: \n");
	scanf("%f%*c", &num);
	par_Imp=fmod(num,2);
	if(par_Imp==0){
		printf("Número par");
	}
	if(par_Imp!=0){
		printf("Número ímpar");
	}
	
	return 0;
}
