#include <stdio.h>
#include <math.h>
#include <windows.h>


int main(){
	int V[10], i, mai, pos;
	
    printf("Insira dez números:\n");
    for(i=0;i<10;i++){
        scanf("%d%*c", &V[i]);
}
    mai=V[0]; 
    pos=V[0];

    for(i=1;i<10;i++){
        if(V[i]>mai){
            mai=V[i];
            pos=i;
        }
}

    printf("Os números do vetor são\t");
    for (i=0;i<10;i++){
        printf("%d\t", V[i]);
    }

    printf("\nO maior valor do vetor é %d", mai);

    printf("\nO maior valor do vetor está localizado na posição %d (A partir de 0)", pos);

	return 0;
}
