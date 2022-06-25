#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    int Idade;
    printf("Insira sua idade-");
    scanf("%d%*c", &Idade);
    if(Idade>=18){
        printf("Você é maior de idade (%d).", Idade);
    }
    if(Idade<18){
        printf("Você é menor de idade (%d).", Idade);
    }
    
	return 0;
}