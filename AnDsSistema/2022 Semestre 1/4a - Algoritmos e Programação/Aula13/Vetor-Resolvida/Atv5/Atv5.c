#include <stdio.h>
#include <math.h>
#include <windows.h>



int main(){
	int V[10], add=0, i;
	
	
    for(i=0;i<10;i++){
        printf("Insira um nÃºmero:\n");
        scanf("%d%*c", &V[i]);
}

    for(i=0;i<10;i++){
        if(V[i]%2==0){
            printf("%d Ã© par\t", V[i]);
            add++;
        } else {
        	printf("%d é ímpar\t", V[i]);
		}
}
    printf("\nO vetor possui %d valores par(es)\n", add);


	return 0;
}
