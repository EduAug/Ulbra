#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
    float pre_prod;
	int cod_orig;
	printf("Insira o preço do produto- $");
	scanf("%f%*c", &pre_prod);
	printf("Insira o código de origem do produto- ");
	scanf("%d%*c", &cod_orig);
	switch (cod_orig){
	case 1:
		printf("A procedência do produto é Sul. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 2:
		printf("A procedência do produto é Norte. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 3:
		printf("A procedência do produto é Leste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 4:
		printf("A procedência do produto é Oeste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 5: case 6:
		printf("A procedência do produto é Nordeste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 7: case 8: case 9:
		printf("A procedência do produto é Sudeste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 10: case 11: case 12: case 13: case 14: case 15:
		printf("A procedência do produto é Centro-Oeste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 16: case 17: case 18: case 19: case 20:
		printf("A procedência do produto é Centro-Oeste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 21: case 22: case 23: case 24: case 25: case 26:
		printf("A procedência do produto é Centro-Oeste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;
	
	case 27: case 28: case 29: case 30:
		printf("A procedência do produto é Centro-Oeste. \n");
		printf("Seu valor é $%.2f", pre_prod);
		break;

	default: 
		printf("Código de origem não suportado");
		break;
}

	return 0;
}