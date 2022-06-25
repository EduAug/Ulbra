#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    float pre, add, imp, pre_fina;
    int cat;
    char sit;
    printf("Insira o valor do produto- $");
    scanf("%f%*c", &pre);
    printf("Qual a categoria do produto?\n1 - Limpeza\n2 - Alimentação\n3 - Vestuário\n");
    scanf("%d%*c", &cat);
    printf("O produto\nR - Precisa ser refrigerado\nN - Não precisa ser refrigerado\n");
    scanf("%c%*c", &sit);
    if(pre<=25){
        switch (cat){
        case 1:
        add=(pre*5)/100;
        printf("O valor do aumento no produto é $%.2f \n", add);
            if (sit == 'R' || sit == 'r'){
                imp=(pre*5)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }else{
                imp=(pre*8)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }
        pre_fina=pre+add-imp;
        printf("O valor final do produto é $%.2f ", pre_fina);
            if (pre_fina<=50){
                printf("e a classificação é barato.");
            }else if(pre_fina>50 && pre_fina<120){
                printf("e a classificação é normal.");
            }else if(pre_fina>=120){
                printf("e a classificação é caro.");
            }
            break;

        case 2:
        add=(pre*8)/100;
        printf("O valor do aumento no produto é $%.2f \n", add);
            imp=(pre*5)/100;
            printf("O valor do imposto é $%.2f \n", imp);
        pre_fina=pre+add-imp;
        printf("O valor final do produto é $%.2f ", pre_fina);
            if (pre_fina<=50){
                printf("e a classificação é barato.");
            }else if(pre_fina>50 && pre_fina<120){
                printf("e a classificação é normal.");
            }else if(pre_fina>=120){
                printf("e a classificação é caro.");
            }
            break;

        case 3:
        add=(pre*10)/100;
        printf("O valor do aumento no produto é $%.2f \n", add);
            if (sit == 'R' || sit == 'r'){
                imp=(pre*5)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }else{
                imp=(pre*8)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }
        pre_fina=pre+add-imp;
        printf("O valor final do produto é $%.2f ", pre_fina);
            if (pre_fina<=50){
                printf("e a classificação é barato.");
            }else if(pre_fina>50 && pre_fina<120){
                printf("e a classificação é normal.");
            }else if(pre_fina>=120){
                printf("e a classificação é caro.");
            }
            break;

        default :
        printf("Opção não suportada, encerrando...");
            break;
        }
    }
    if(pre>25){
        switch (cat){
        case 1:
        add=(pre*12)/100;
        printf("O valor do aumento no produto é $%.2f \n", add);
            if (sit == 'R' || sit == 'r'){
                imp=(pre*5)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }else{
                imp=(pre*8)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }
        pre_fina=pre+add-imp;
        printf("O valor final do produto é $%.2f ", pre_fina);
            if (pre_fina<=50){
                printf("e a classificação é barato.");
            }else if(pre_fina>50 && pre_fina<120){
                printf("e a classificação é normal.");
            }else if(pre_fina>=120){
                printf("e a classificação é caro.");
            }
            break;

        case 2:
        add=(pre*15)/100;
        printf("O valor do aumento no produto é $%.2f \n", add);
            imp=(pre*5)/100;
            printf("O valor do imposto é $%.2f \n", imp);
        pre_fina=pre+add-imp;
        printf("O valor final do produto é $%.2f ", pre_fina);
            if (pre_fina<=50){
                printf("e a classificação é barato.");
            }else if(pre_fina>50 && pre_fina<120){
                printf("e a classificação é normal.");
            }else if(pre_fina>=120){
                printf("e a classificação é caro.");
            }
            break;

        case 3:
        add=(pre*18)/100;
        printf("O valor do aumento no produto é $%.2f \n", add);
            if (sit == 'R' || sit == 'r'){
                imp=(pre*5)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }else{
                imp=(pre*8)/100;
                printf("O valor do imposto é $%.2f \n", imp);
            }
        pre_fina=pre+add-imp;
        printf("O valor final do produto é $%.2f ", pre_fina);
            if (pre_fina<=50){
                printf("e a classificação é barato.");
            }else if(pre_fina>50 && pre_fina<120){
                printf("e a classificação é normal.");
            }else if(pre_fina>=120){
                printf("e a classificação é caro.");
            }
            break;

        default :
        printf("Opção não suportada, encerrando...");
            break;
        }
    }

	return 0;
}