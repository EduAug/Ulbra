#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    int n1, n2, n3, ext=0;
    float med;
    char nome[100];
    char matr[100];

    
    do{
        printf("Insira o número da matrícula do(a) aluno(a):\n");
        scanf("%s%*c", &matr);
        printf("Insira o nome do(a) aluno(a):\n");
        scanf("%s%*c", &nome);
        printf("Insira a primeira nota:\n");
        scanf("%d%*c", &n1);
        printf("Insira a segunda nota:\n");
        scanf("%d%*c", &n2);
        printf("Insira a última nota:\n");
        scanf("%d%*c", &n3);
        med=(n1+n2+n3)/3;
        if(med>=7){
            printf("Parabéns, o(a) aluno(a) %s foi aprovado(a)\nCom média %2.f \n", nome, med);
        } else if(med<7){
            printf("O(A) aluno(a) %s está de recuperação\n", nome);
        } else if(med<3){
            printf("O(A) aluno(a) %s foi reprovado\n", nome);
        }
        ext=ext+1;
    } while (ext<=10);
    

    return 0;
}