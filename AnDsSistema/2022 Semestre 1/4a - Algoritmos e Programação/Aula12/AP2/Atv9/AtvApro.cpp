#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    float not1, not2, med;

        printf("Insira as duas notas: \n");
        scanf("%f%*c", &not1);
        scanf("%f%*c", &not2);
        med=(not1+not2)/2;
        printf("Sua nota � %.2f, voc� ", med);
        if(med>7){
            printf("foi aprovado");
        } else if(med>=4 && med<7){
            printf("est� de exame");
		} else{
			printf("foi reprovado");
		}
		
    return 0;
}
