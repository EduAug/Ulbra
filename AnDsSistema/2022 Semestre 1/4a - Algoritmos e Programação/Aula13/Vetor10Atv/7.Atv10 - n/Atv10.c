#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

	int V1[10], V2[5], V1R[10], V2R[10], i=0, j=0;
    int cont=0;
	int TST=3;
	
	printf("Insira os números do primeiro vetor:\n");
	for(i=0;i<TST;i++){
		printf("Digite um número:\n");
		scanf("%d%*c", &V1[i]);
	}
	
	printf("Insira os números do segundo vetor:\n");
	for(i=0;i<TST;i++){
		printf("Digite um número:\n");
		scanf("%d%*c", &V2[i]);
	}
	

    printf("\nOs números pares do primeiro vetor, somados aos números do segundo resultam em:");
	for(i=0;i<TST;i++){
        if(V1[i]%2==0){
            printf("\n%d -\t", V1[i]);
            for(j=0;j<TST;j++){
                    V1R[j]=V1[i]+V2[j];
                    printf("%d\t", V1R[j]);
            }
        }
	}


    printf("\nOs números impares do primeiro vetor possuem esta quantia de divisores no segundo vetor:");
	for(i=0;i<TST;i++){
        if(V1[i]%2!=0){
            printf("\n%d -\t", V1[i]);
            for(j=0;j<TST;j++){
                    V1R[j]=V1[i]/V2[j];
                    cont=cont+1;
            }
            printf("%d\t", cont);
        }
	}


	return 0;
}
