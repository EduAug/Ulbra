#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	float val_A, val_B, val_C;
	int val_I;
	
	printf("Declare o número para A: \n");
	scanf("%f%*c", &val_A);
	printf("Declare o número para B: \n");
	scanf("%f%*c", &val_B);
	printf("Declare o número para C: \n");
	scanf("%f%*c", &val_C);
	printf("Declare o valor de I (1, 2 ou 3) \n");
	scanf("%d%*c", &val_I);
	if(val_I==1){
		printf("A ordem crescente dos números é: \n");
		if(val_A<val_B && val_A<val_C){
			if(val_B<val_C){
				printf("%.0f %.0f %.0f", val_A, val_B, val_C);
			}
			else{
				printf("%.0f %.0f %.0f", val_A, val_C, val_B);
			}
		}
		if(val_B<val_A && val_B<val_C){
			if(val_A<val_C){
				printf("%.0f %.0f %.0f", val_B, val_A, val_C);
			}
			else{
				printf("%.0f %.0f %.0f", val_B, val_C, val_A);
			}
		}
		if(val_C<val_B && val_C<val_A){
			if(val_B<val_C){
				printf("%.0f %.0f %.0f", val_C, val_A, val_B);
			}
			else{
				printf("%.0f %.0f %.0f", val_C, val_B, val_A);
			}
		}
	}
	if(val_I==2){
		printf("A ordem decrescente dos numeros é: \n");
		if (val_A>val_B && val_A>val_C){
			if(val_B>val_C){
				printf("%0.f %0.f %0.f", val_A, val_B, val_C);
			}
			else{
				printf("%.0f %.0f %.0f", val_A, val_C, val_B);
			}
		}
		if (val_B>val_A && val_B>val_C){
			if (val_A>val_C){
				printf("%0.f %0.f %0.f", val_B, val_A, val_C);
			}
			else{
				printf("%0.f %0.f %0.f", val_B,val_C, val_A);
			}
		}
		if (val_C>val_A && val_C>val_B){
			if(val_A>val_B){
				printf("%.0f %.0f %.0f", val_C, val_A, val_B);
			}
			else{
				printf("%.0f %.0f %.0f", val_C, val_B, val_A);
			}
		}
	}
	if(val_I==3){
		printf("O maior número ao meio é: \n");
		if (val_A>val_B && val_A>val_C){
			printf("%0.f %0.f %0.f", val_B, val_A, val_C);
		}
		if (val_B>val_A && val_B>val_C){
			printf("%.0f %.0f %.0f", val_A, val_B, val_C);
		}
		if (val_C>val_A && val_C>val_B){
			printf("%.0f %.0f %.0f", val_A, val_C, val_B);
		}
		
	}
	
	return 0;
}