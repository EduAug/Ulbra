#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	UINT CPAGE_UTF8 = 65001;
	UINT CPAGE_DEFAULT = GetConsoleOutputCP();
	SetConsoleOutputCP(CPAGE_UTF8);
	float Senha;
	printf("Insira a senha: ");
	scanf("%f%*c", &Senha);
	while (Senha != 4531){
		printf("Acesso negado, tente novamente...\n");
		printf("Insira a senha: ");
		scanf("%f%*c", &Senha);
	}
	if (Senha == 4531){
		printf("Acesso liberado...");
	}

	return 0;
}
