#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    float Idade;
    printf("Insira sua idade: ");
    scanf("%f%*c", &Idade);
    if (Idade<5){
        printf("Você é novo demais para nadar.");
    }
    if (Idade>=5 && Idade<=7){
        printf("Sua categoria é Infantil.");
    }
    if (Idade>7 && Idade<=10){
        printf("Sua categora é Juvenil.");
    }
    if (Idade>10 && Idade<=15){
        printf("Sua categoria é Adolescente.");
    }
    if (Idade>15 && Idade<=30){
        printf("Sua categoria é Adulto.");
    }
    if (Idade>30){
        printf("Sua categoria é Sênior.");
    }

	return 0;
}