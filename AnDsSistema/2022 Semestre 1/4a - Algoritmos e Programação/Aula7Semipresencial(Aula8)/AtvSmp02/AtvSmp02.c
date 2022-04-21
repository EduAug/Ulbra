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
    printf("Sua nota é %.2f, você ", med);
    if(med>=7){
        printf("foi aprovado(a)");
    }
    if(med>=4 && med<7){
        printf("está de exame");
    }
    if(med>=0 && med<4){
        printf("foi reprovado(a)");
    }

    return 0;
}