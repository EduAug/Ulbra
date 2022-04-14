#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float not1, not2, not3, med_Arit_Aluno, not_Exam;
	printf("Insira nota 1 \n");
	scanf("%f%*c", &not1);
	printf("Insira a nota 2 \n");
	scanf("%f%*c", &not2);
	printf("Insira a nota 3 \n");
	scanf("%f%*c", &not3);
	med_Arit_Aluno=(not1+not2+not3)/3;
	if (med_Arit_Aluno>=7 && med_Arit_Aluno<=10){
		printf("Aprovado");
	}
	if (med_Arit_Aluno>=0 && med_Arit_Aluno<3){
		printf("Reprovado");
	}
	if (med_Arit_Aluno>=3 && med_Arit_Aluno<7){
		printf("Exame \n");
		not_Exam=(med_Arit_Aluno-12)*-1;
		printf("Nota necessaria no exame: %.2f \n", not_Exam);
	}
	
	return 0;
}
