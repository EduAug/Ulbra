#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float not_Trab, not_Aval, not_Exam, media;
	float pes_Trab, pes_Aval, pes_Exam;
	
	printf("Qual a nota do trabalho? \n");
	scanf("%f%*c", &not_Trab);
	printf("Qual a nota da avaliacao? \n");
	scanf("%f%*c", &not_Aval);
	printf("Qual a nota do exame? \n");
	scanf("%f%*c", &not_Exam);
	pes_Trab=not_Trab*2;
	pes_Aval=not_Aval*3;
	pes_Exam=not_Exam*5;
	media=(pes_Trab+pes_Aval+pes_Exam)/(2+3+5);
	printf("A media foi %.2f \n", media);
	if (media>=8 && media<=10){
		printf("O conceito obtido foi A");
	}
	if (media>=7 && media<8){
		printf("O conceito obtido foi B");
	}
	if (media>=6 && media<7){
		printf("O conceito obtido foi C");
	}
	if (media>=5 && media<6){
		printf("O conceito obtido foi D");
	}
	if (media>=0 && media<5){
		printf("O conceito obtido foi E");
	}
	
	return 0;
}
