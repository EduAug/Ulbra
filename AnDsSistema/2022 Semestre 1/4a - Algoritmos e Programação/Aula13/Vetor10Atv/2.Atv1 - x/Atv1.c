#include <stdio.h>
#include <math.h>
#include <locale.h>


int main(){
	setlocale(LC_ALL, "Portuguese");
	int V[6], add=0, add1=0, i;
	
	
    printf("Insira 6 números:\n");
    
    for(i=0;i<6;i++){
        scanf("%d%*c", &V[i]);
}

    for(i=0;i<6;i++){
        if(V[i]%2==0){
            printf("\n%d", V[i]);
            add++;
	}
}
		
    printf("\nO vetor possui %d valores par(es)\n", add);
    
    for(i=0;i<6;i++){
        if(V[i]%2!=0){
        	printf("\n%d", V[i]);
        	add1++;
	}
}
    printf("\nO vetor possui %d valores ímpar(es)\n", add1);


	return 0;
}
