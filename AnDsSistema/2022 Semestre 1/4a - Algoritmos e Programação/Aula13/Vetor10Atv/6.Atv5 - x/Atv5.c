#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

	int cLogic[15], cLing[10], i=0, m=0;
	/*int TST=3;*/
	
	printf("Insira os alunos de Lógica:\n");
	for(i=0;i<15;i++){
		printf("Digite o número da matrícula do aluno:\n");
		scanf("%d%*c", &cLogic[i]);
	}
	
	printf("Insira os alunos de Linguagem da Programação:\n");
	for(i=0;i<10;i++){
		printf("Digite o número da matrícula do aluno:\n");
		scanf("%d%*c", &cLing[i]);
	}
	
	for(i=0;i<10;i++){
		for(m=0;m<15;m++){
			if(cLing[i]==cLogic[m]){
				printf("O aluno # %d cursa tanto Lógica quanto Linguagem da programação\n", cLing[i]);
			}
		}
	}
	
	return 0;
}
