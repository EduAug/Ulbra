#include <stdio.h>
#include <math.h>


int main(){
	int A[]={1,0,5,-2,-5,7}, soma, i;
	
	soma=A[0]+A[1]+A[5];
	printf("A soma � %d\n", soma);
	
	A[4]=100;
	
	for (i = 0; i<6; i++){
		printf("O valor da posi��o %d � %d\n", i+1, A[i]);
	}
	
	
	return 0;
}
