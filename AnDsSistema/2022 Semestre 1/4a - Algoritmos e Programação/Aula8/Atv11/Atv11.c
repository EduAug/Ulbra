#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float sal, add, sal_fin;
    printf("Insira seu sal�rio para continuar- $");
    scanf("%f%*c", &sal);
    if(sal<=300){
    	add=(sal*15)/100;
        sal_fin=sal+add;
        printf("Parab�ns, voc� rececbeu um aumento de $%.2f e seu novo sal�rio � de $%.2f", add, sal_fin);
    }
    if(sal>300 && sal<=600){
    	add=(sal*10)/100;
        sal_fin=sal+add;
        printf("Parab�ns, voc� rececbeu um aumento de $%.2f e seu novo sal�rio � de $%.2f", add, sal_fin);
    }
    if(sal>600 && sal<=900){
    	add=(sal*5)/100;
        sal_fin=sal+add;
        printf("Parab�ns, voc� rececbeu um aumento de $%.2f e seu novo sal�rio � de $%.2f", add, sal_fin);
    }
    if(sal>900){
        printf("Seu sal�rio de $%.2f n�o se enquadra na faixa de aumento", sal);
    }

    return 0;
}
