#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	int a=0, b=0, c=0, d=0, e=0;
	if (a || b){
		printf("Os dois não são 0\n");
		if (c&&d){
			printf("Esses não são 1\n");
		}else
			if(e){
				printf("3");
			} else{
				printf("4");
				if(c){
					printf("5");
				}
			}
			if(d){
				printf("6");
			printf("7");
			}
	} else {
		printf("Os dois são 0\n");
		if (c && d){
			printf("E esse não é 0\n");
		}else{
		 if(e){
			printf("Esse é 1\n");	
		}else{
			printf("Esse tbm é 0\n");
		}
		}
		printf("Mais um 0");
	}
	
	return 0;
}
