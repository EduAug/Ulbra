#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    float alt, pes;
    char sexo;
    printf("Insira seu sexo \n(H para Homem/M para Mulher)- ");
    scanf("%c%*c", &sexo);
    printf("Insira sua altura (Em cm)- ");
    scanf("%f%*c", &alt);

    if (sexo=='H' || sexo=='h'){
        pes=(72.2*(alt/100))-58;
        printf("Seu peso ideal é %.2f KG", pes);
    }else if( sexo=='M' || sexo=='m'){
        pes=(62.1*(alt/100))-44.7;
        printf("Seu peso ideal é %.2f KG", pes);
    }

	return 0;
}