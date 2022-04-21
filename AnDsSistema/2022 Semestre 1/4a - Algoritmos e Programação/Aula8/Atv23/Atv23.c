#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    float cod, qnt, pre_unit, pre_tota, des_tota, pre_fina;
    printf("Insira o código do produto comprado: #");
    scanf("%f%*c", &cod);
    printf("Insira a quantia do produto comprado: ");
    scanf("%f%*c", &qnt);
    if(cod>=1 && cod<=10){
        pre_unit=10;
        printf("Cada unidade do produto %.0f custa $%.2f \n", cod, pre_unit);
        pre_tota=10*qnt;
        printf("O total da nota, sem desconto, é $%.2f \n", pre_tota);
        if(pre_tota<=250){
            des_tota=(pre_tota*5)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f", pre_fina);
        }else if(pre_tota>250 && pre_tota<=500){
            des_tota=(pre_tota*10)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }else if(pre_tota>500){
            des_tota=(pre_tota*15)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }
    }
    if(cod>10 && cod<=20){
        pre_unit=15;
        printf("Cada unidade do produto %.0f custa $%.2f \n", cod, pre_unit);
        pre_tota=15*qnt;
        printf("O total da nota, sem desconto, é $%.2f \n", pre_tota);
        if(pre_tota<=250){
            des_tota=(pre_tota*5)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f", pre_fina);
        }else if(pre_tota>250 && pre_tota<=500){
            des_tota=(pre_tota*10)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }else if(pre_tota>500){
            des_tota=(pre_tota*15)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }
    }
    if(cod>20 && cod<=30){
        pre_unit=20;
        printf("Cada unidade do produto %.0f custa $%.2f \n", cod, pre_unit);
        pre_tota=20*qnt;
        printf("O total da nota, sem desconto, é $%.2f \n", pre_tota);
        if(pre_tota<=250){
            des_tota=(pre_tota*5)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f", pre_fina);
        }else if(pre_tota>250 && pre_tota<=500){
            des_tota=(pre_tota*10)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }else if(pre_tota>500){
            des_tota=(pre_tota*15)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }
    }
    if(cod>30 && cod<=40){
        pre_unit=30;
        printf("Cada unidade do produto %.0f custa $%.2f \n", cod, pre_unit);
        pre_tota=30*qnt;
        printf("O total da nota, sem desconto, é $%.2f \n", pre_tota);
        if(pre_tota<=250){
            des_tota=(pre_tota*5)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f", pre_fina);
        }else if(pre_tota>250 && pre_tota<=500){
            des_tota=(pre_tota*10)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }else if(pre_tota>500){
            des_tota=(pre_tota*15)/100;
            pre_fina=pre_tota-des_tota;
            printf("O total da compra é $%.2f");
        }
    }
    if(cod>40 || cod<1){
        printf("Código não suportado, tente novamente");
    }
    
	return 0;
}