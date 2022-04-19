#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float num1, num2, esc;
    float med, sub, vez, div, off;
    printf("Insira dois números: \n");
    scanf("%f%*c", &num1);
    scanf("%f%*c", &num2);
    printf("Selecione a operação: \n");
    printf("1 - Média dos números \n");
    printf("2 - Diferença entre o maior e o menor \n");
    printf("3 - Produto dos números \n");
    printf("4 - Divisão do primeiro pelo segundo \n");
    scanf("%f%*c", &esc);
    if(esc==1){
        med=(num1+num2)/2;
        printf("A média dos números é %.2f ", med);
    }
    if(esc==2){
        if(num1>num2){
            sub=num1-num2;
            printf("A diferença entre o maior e o menor é %.2f", sub);
        }
        if(num2>num1){
            sub=num2-num1;
            printf("A diferença entre o maior e o menor é %.2f", sub);
        }
        if(num1==num2 && num2==num1){
            printf("Os números são iguais, não há diferença");
        }
    }
    if(esc==3){
        vez=num1*num2;
        printf("O produto dos números é %.2f ", vez);
    }
    if(esc==4){
        if(num2==0){
            printf("Impossível dividir por 0, encerrando");
        }
        if(num2!=0){
            div=num1/num2;
            printf("A divisão do primeiro pelo segundo resulta em %.2f ", div);
        }
    }
    if(esc<=0 || esc>4){
        printf("Opção não suportada, encerrando");
        return 0;
    }


    return 0;
}