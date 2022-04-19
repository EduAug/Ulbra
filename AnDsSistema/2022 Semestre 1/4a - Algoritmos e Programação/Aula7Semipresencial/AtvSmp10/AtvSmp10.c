#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    float cus_fabr, por_dist, imp, cus_fin;
    printf("Insira o custo de fábrica do veículo- $");
    scanf("%f%*c", &cus_fabr);
    if(cus_fabr<=12000){
        por_dist=(cus_fabr*5)/100;
        imp=0;
        cus_fin=cus_fabr+por_dist+imp;
        printf("O custo do veículo é $%.2f", cus_fin);
    }
    if(cus_fabr>12000 && cus_fabr<=25000){
        por_dist=(cus_fabr*10)/100;
        imp=(cus_fabr*15)/100;
        cus_fin=cus_fabr+por_dist+imp;
        printf("O custo de veículo é $%.2f", cus_fin);
    }
    if(cus_fabr>25000){
        por_dist=(cus_fabr*15)/100;
        imp=(cus_fabr*20)/100;
        cus_fin=cus_fabr+por_dist+imp;
        printf("O custo do veículo é $%.2f", cus_fin);
    }

    return 0;
}