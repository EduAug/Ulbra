#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    float Ida, Pes;
    printf(" * * Identificador de grupo de risco * * \n \n");
    printf("Insira sua idade- ");
    scanf("%f%*c", &Ida);
    printf("Insira seu peso (Em KG)- ");
    scanf("%f%*c", &Pes);
    if(Ida<20){
        if(Pes<60){
            printf("Grupo 9");
        }else if(Pes>=60 && Pes<=90){
            printf("Grupo 8");
        }else if(Pes>90){
            printf("Grupo 7");
        }
    }
    if(Ida>=20 && Ida<=50){
        if(Pes<60){
            printf("Grupo 6");
        }else if(Pes>=60 && Pes<=90){
            printf("Grupo 5");
        }else if(Pes>90){
            printf("Grupo 4");
        }
    }
    if(Ida>50){
        if(Pes<60){
            printf("Grupo 3");
        }else if(Pes>=60 && Pes<=90){
            printf("Grupo 2");
        }else if(Pes>90){
            printf("Grupo 1");
        }
    }

    
	return 0;
}