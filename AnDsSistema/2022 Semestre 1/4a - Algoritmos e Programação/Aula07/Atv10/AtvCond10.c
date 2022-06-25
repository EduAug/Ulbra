#include <stdio.h>
#include <math.h>
#include <windows.h>

int main() {
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);

    float dia1, dia2, mes1, mes2, ano1, ano2;
    
    printf("Insira a primeira data: \n");
    printf("Dia \n");
    scanf("%f%*c", &dia1);
    while(dia1>31){
        printf("Dia inválido \n");
        printf("Reensira o dia \n");
        scanf("%f%*c", &dia1);
    }

    printf("Mês (Em numeral) \n");
    scanf("%f%*c", &mes1);
    while (mes1>12){
        printf("Mês inválido \n");
        printf("Reensira o mês \n");
        scanf("%f%*c", &mes1);
    }
    
    printf("Ano \n");
    scanf("%f%*c", &ano1);
    
    printf("Insira a segunda data: \n");
    printf("Dia \n");
    scanf("%f%*c", &dia2);
    while(dia2>31){
        printf("Dia inválido \n");
        printf("Reensira o dia \n");
        scanf("%f%*c", &dia2);
    }

    printf("Mês (Em numeral) \n");
    scanf("%f%*c", &mes2);
    while (mes2>12){
        printf("Mês inválido \n");
        printf("Reensira o mês \n");
        scanf("%f%*c", &mes2);
    }
    
    printf("Ano \n");
    scanf("%f%*c", &ano2);


    if(ano1>ano2){
        printf("A ''maior'' data é:%02.0f / %02.0f / %04.0f", dia1, mes1, ano1); 
    }
        else if(ano2>ano1){
            printf("A ''maior'' data é:%02.0f / %02.0f / %04.0f", dia2, mes2, ano2);
        }
        else if(mes1>mes2){
            printf("A ''maior'' data é:%02.0f / %02.0f / %04.0f", dia1, mes1, ano1);
        }
        else if(mes2>mes1){
            printf("A ''maior'' data é:%02.0f / %02.0f / %04.0f", dia2, mes2, ano2);
        }
        else if(dia1>dia2){
        printf("A ''maior'' data é:%02.0f / %02.0f / %04.0f", dia1, mes1, ano1);
        }
        else if(dia2>dia1){
            printf("A ''maior'' data é:%02.0f / %02.0f / %04.0f", dia2, mes2, ano2);
        }
        else{
            printf("As datas coincidem");
        }

    return 0;
}