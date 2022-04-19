#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float sal_med, add, add_fin, val_cred;
    printf("Insira seu saldo médio- \n$");
    scanf("%f%*c", &sal_med);
    if(sal_med<=200){
        add=(sal_med*10)/100;
        add_fin=add+sal_med;
        printf("Seu saldo médio é $%.2f \n", sal_med);
        printf("Seu saldo aumentou $%.2f \nTotalizando $%.2f de crédito", add, add_fin);
    }
    if(sal_med>200 && sal_med<=300){
        add=(sal_med*20)/100;
        add_fin=add+sal_med;
        printf("Seu saldo medio é $%.2f \n", sal_med);
        printf("Seu saldo aumentou $%.2f \nTotalizando $%.2f de crédito", add, add_fin);
    }
    if(sal_med>300 && sal_med<=400){
        add=(sal_med*25)/100;
        add_fin=add+sal_med;
        printf("Seu saldo medio é $%.2f \n", sal_med);
        printf("Seu saldo aumentou $%.2f \nTotalizando $%.2f de crédito", add, add_fin);
    }
    if(sal_med>400){
        add=(sal_med*30)/100;
        add_fin=add+sal_med;
        printf("Seu saldo medio é $%.2f \n", sal_med);
        printf("Seu saldo aumentou $%.2f \nTotalizando $%.2f de crédito", add, add_fin);
    }

    return 0;
}