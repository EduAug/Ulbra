#include <stdio.h>
#include <math.h>

int main(){
	int i =0, totTur, alu=0, totAl =0;
	
	for(alu; alu<10; alu++){
		printf("Insira a nota do %d aluno\n", alu+1);
		scanf("%d%*c", &i);
		totAl=totAl+i;
	}
	
	totTur=(totAl/alu);
	printf("A média da turma é %d", totTur);
	
	
	return 0;

}
