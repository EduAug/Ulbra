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
			printf("A média de %s é %d\n", Nome[i], M[i]);
			
			printf("Gostaria de adicionar mais um aluno? (%d / 10)\n", misc);
			printf("0-Sim\t1-Não\n");
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
	
			printf("Escolha uma opção:\n");
			printf("1-Listar alunos aprovados\n2-Listar alunos reprovados\n3-Listar alunos com nota inferior a 'X'\n4-Dados do aluno na posição 'X'\n5-Encerrar\n");
			scanf("%d%*c", &opc);
			
		switch (opc){
			case 1:
				for(i=0;i<alu;i++){
					if(M[i]>=7){
						printf("\nO aluno %s está aprovado (Nota %d)\n", Nome[i],M[i]);
					}
				}
				printf("\n");
				break;
				
			case 2:
				for(i=0;i<alu;i++){
					if(M[i]<7){
						printf("\nO aluno %s está reprovado (Nota %d)\n", Nome[i],M[i]);
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
				printf("O aluno %s está na posição %d do vetor\n", Nome[X], X);
				printf("Sua primeira nota foi %d, sua segunda nota foi %d e sua média é %d", N1[X], N2[X], M[X]);

				printf("\n");
				
				break;
			
			case 5:
				printf("Encerrando...\n");
				break;	
			
			default:
				printf("Opção não suportada\n");
				break;
		}	
	}
	
	
	return 0;
}