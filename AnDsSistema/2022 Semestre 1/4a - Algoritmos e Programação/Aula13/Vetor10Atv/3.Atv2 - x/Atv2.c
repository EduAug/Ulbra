#include <stdio.h>
#include <math.h>
#include <locale.h>


int main(){
	setlocale(LC_ALL, "Portuguese");
	int V[7], i;
	
	
    printf("Insira 7 números:\n");
    
    for(i=0;i<7;i++){
        scanf("%d%*c", &V[i]);
}
		
    printf("\nOs múltiplos de 2 são:");

    for(i=0;i<7;i++){
        if(V[i]%2==0){
            printf("\n%d", V[i]);
	}
}
    
    printf("\nOs múltiplos de 3 são:");
    
    for(i=0;i<7;i++){
        if(V[i]%3==0){
        	printf("\n%d", V[i]);
	}
}

    printf("\nOs múltiplos de 2 e 3 são:");
    
    for(i=0;i<7;i++){
        if(V[i]%2==0 && V[i]%3==0){
        	printf("\n%d", V[i]);
	}
}


	return 0;
}
