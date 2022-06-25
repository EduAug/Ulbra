#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);

    float not1, not2, not3, not4, med;
    printf("Insira as notas de 1 a 4: \n");
    scanf("%f%*c", &not1);
    scanf("%f%*c", &not2);
    scanf("%f%*c", &not3);
    scanf("%f%*c", &not4);
    med=(not1+not2+not3+not4)/4;
    printf("Parabéns, sua média é %.2f, você foi ", med);
    if(med>=7){
        printf("aprovado(a)");
    }
    if(med<7){
        printf("reprovado(a)");
    }

    return 0;
}