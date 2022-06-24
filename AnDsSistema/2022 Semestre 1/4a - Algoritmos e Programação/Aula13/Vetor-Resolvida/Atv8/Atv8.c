#include <stdio.h>
#include <math.h>
#include <windows.h>


int main(){
    int V[6], i, seq;

    for(i=0;i<6;i++){
    printf("Insira um número:\n");
    scanf("%d%*c", &V[i]);
}
    printf("A ordem inversa dos números inseridos fica:\n");
    for(seq=5;seq>=0;seq--){
        printf("%d\n", V[seq]);
    }





    /*printf("Insira 6 números:\n");        F O R M A 
    for(int i=0; i<6;i++){              L U S I T A N A
        scanf("%d%*c", &V[i]);
    }
    printf("A ordem inversa dos números digitados é:\n");
    printf("%d\n",V[5]);
    printf("%d\n",V[4]);
    printf("%d\n",V[3]);
    printf("%d\n",V[2]);
    printf("%d\n",V[1]);
    printf("%d\n",V[0]);
*/


	return 0;
}
