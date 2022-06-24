 #include <stdio.h>
 #include <string.h>
 
 int main(){
 	char nome1[20];
 	
 	printf("Insira um nome (Até 20 caracteres)\n");
 	
 	gets(nome1);
 	
 	puts(strupr(nome1));
 	
 	puts(strlwr(nome1)); 	
 	
 	return 0;
 }
