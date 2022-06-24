#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

	int Vent[10], Vpar[10], Vimp[10], i=0;
	//int TST=3;
	
	printf("Insira os números do primeiro vetor:\n");
	for(i=0;i<10;i++){
		printf("Digite um número:\n");
		scanf("%d%*c", &Vent[i]);
	}

    printf("\nOs números pares são:\t");
	for(i=0;i<10;i++){
        if(Vent[i]%2==0){
            Vpar[i]=Vent[i];
            printf("%d\t", Vpar[i]);
        }
    }

    printf("\nOs números ímpares são:\t");
	for(i=0;i<10;i++){
        if(Vent[i]%2!=0){
            Vimp[i]=Vent[i];
            printf("%d\t", Vimp[i]);
        }
	}


	return 0;
}

//Não pode ser que seja só isso, tá mt fácil
