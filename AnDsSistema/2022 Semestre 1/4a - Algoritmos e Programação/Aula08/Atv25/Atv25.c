#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    float gra, hor_extr, hor_fal;
    printf("* * Calculadora de prêmio * *\n");
    printf("Insira o número de horas extras- ");
    scanf("%f%*c", &hor_extr);
    printf("Agora, insira o número de horas faltas- ");
    scanf("%f%*c", &hor_fal);
    gra=hor_extr-((2/3)*hor_fal);
    if(gra<10){
        printf("O funcionário receberá uma gratificação de $100,00.");
    }
    if(gra>=10 && gra<=20){
        printf("O funcionário receberá uma gratificação de $200,00.");
    }
    if(gra>20 && gra<30){
        printf("O funcionário receberá uma gratificação de $300,00.");
    }
    if(gra>=30 && gra<=40){
        printf("O funcionário receberá uma gratificação de $400,00.");
    }
    if(gra>40){
        printf("O funcionário receberá uma gratificação de $500,00.");
    }

	return 0;
}