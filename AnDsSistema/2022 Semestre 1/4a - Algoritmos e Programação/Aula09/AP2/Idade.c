#include <stdio.h>
#include <windows.h>
int main(){    
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    int ida, alf, vot;

    printf("Você consegue ler as instruções do programa?\n1 - Sim\n2 - Não (Fazendo com ajuda)\n");
    scanf("%d%*c", &alf);
    printf("Insira sua idade: ");
    scanf("%d%*c", &ida);
    if (ida >= 18){
        vot = 1;
    }
    if (ida >= 16 && ida < 18){
        vot = 2;
    }
    
    switch (alf){
    case 1:
        alf = 1;
        break;

    case 2:
        alf = 2;
        break;
    
    default:
        printf("Opção não suportada, encerrando ...");
        return 0;
        break;
    }
    
    
    switch (vot){
    case 1:
        printf("Você é maior de idade e ");
        if (ida >70 || alf==2){
            printf("seu voto é facultativo.");
        }else {
            printf("seu voto é obrigatório.");
        }
        break;

    case 2:
        printf("Você é menor de idade, seu voto é facultativo.");
        break;
    
    default:
        printf("Você é menor de idade, não pode votar ainda");
        if (alf == 2){
            printf(" e deveria estar na escola.");
        } else {
            printf(".");
        }
        break;
    }

    return 0;
}