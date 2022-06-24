#include <stdio.h>
#include <math.h>
#include <locale.h>

int main(){
	
	int N1[10], N2[10], M[10];
	char Nome[10][40];
	int i=0, opc=0, alt=0, lac=0;
	int alu=1, misc=1;
	int X;
	
	
	setlocale(LC_ALL, "Portuguese");
	
	do{
		for(i=lac;i<alu;i++){
			printf("Insira a primeira nota do aluno %d:\n", misc);
			scanf("%d%*c", &N1[i]);
			printf("Insira a segunda nota do aluno %d:\n", misc);
			scanf("%d%*c", &N2[i]);
			M[i]=(N1[i]+N2[i])/2;
			printf("Insira o nome do aluno %d:\n", misc);
			scanf("%s%*c", &Nome[i]);
			printf("A m�dia de %s � %d\n", Nome[i], M[i]);
			
			printf("Gostaria de adicionar mais um aluno? (%d / 10)\n", misc);
			printf("0-Sim\t1-N�o\n");
			scanf("%d%*c", &alt);
		}
			if(alt==0){
				alu+=1;
				misc+=1;
				lac+=1;
			}else{
				opc=1;
				break;
			}
		
	}while(opc!=1);
	
	
	while(opc!=5){
	
			printf("Escolha uma op��o:\n");
			printf("1-Listar alunos aprovados\n2-Listar alunos reprovados\n3-Listar alunos com nota inferior a 'X'\n4-Dados do aluno na posi��o 'X'\n5-Encerrar\n");
			scanf("%d%*c", &opc);
			
		switch (opc){
			case 1:
				for(i=0;i<alu;i++){
					if(M[i]>7){
						printf("\nO aluno %s est� aprovado (Nota %d)\n", Nome[i],M[i]);
					}
				}
				printf("\n");
				break;
				
			case 2:
				for(i=0;i<alu;i++){
					if(M[i]<7){
						printf("\nO aluno %s est� reprovado (Nota %d)\n", Nome[i],M[i]);
					}
				}
				printf("\n");
				break;
				
			case 3:
				printf("Insira um valor para 'X'\n");
				scanf("%d%*c", &X);
				for(i=0;i<alu;i++){
					if(M[i]<X){
						printf("\nO aluno %s tem nota abaixo de %d (Nota %d)\n", Nome[i], X, M[i]);
					}
				}
				printf("\n");
				
				break;
				
			case 4:
				printf("Insira um valor para 'X'\n");
				scanf("%d%*c", &X);
				for(i=0;i<alu;i++){
					printf("O aluno %s est� na posi��o %d do vetor\n", Nome[i], X);
					printf("\n");
				}
				
				break;
			
			case 5:
				printf("Encerrando...\n");
				break;	
			
			default:
				printf("Op��o n�o suportada\n");
				break;
		}	
	}
	
	
	return 0;
}
