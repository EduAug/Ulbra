#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	int a=0, b=0, c=0, d=0, e=0;
	if (a || b){
		printf("Os dois n�o s�o 0\n");
		if (c&&d){
			printf("Esses n�o s�o 1\n");
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
		printf("Os dois s�o 0\n");
		if (c && d){
			printf("E esse n�o � 0\n");
		}else{
		 if(e){
			printf("Esse � 1\n");	
		}else{
			printf("Esse tbm � 0\n");
		}
		}
		printf("Mais um 0");
	}
	
	return 0;
}
