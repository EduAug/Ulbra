 #include <stdio.h>
 #include <string.h>
 #include <locale.h>

 int main(){
	setlocale(LC_ALL, "Portuguese");
	
 	char nome1[20];
 	char nome2[20];
 	char nomeFin[42];
 	
 	printf("Insira seu nome (At� 20 caracteres)\n");
 	
 	gets(nome1);
 	
	printf("Insira seu sobrenome (At� 20 caracteres)\n");
 	
 	gets(nome2);
 	
 	strcat(nomeFin, nome1);
 	strcat(nomeFin, " ");
 	strcat(nomeFin, nome2);
 	
 	puts(nomeFin);
 	
 	return 0;
 }
