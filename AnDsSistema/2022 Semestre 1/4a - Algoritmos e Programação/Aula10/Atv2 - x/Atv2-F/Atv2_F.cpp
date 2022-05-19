#include <stdio.h>
#include <math.h>

int main(){
	int som;
	
	som=0;	
	for(int i=1000; i<=1500;i++){
		if(i % 2 != 0){
		printf("Os impares são: %d\n", i);
		}
	}
	
	return 0;
}
