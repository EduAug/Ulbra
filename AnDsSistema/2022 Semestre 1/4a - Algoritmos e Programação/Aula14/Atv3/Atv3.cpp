 #include <stdio.h>
 #include <string.h>

 int main(){
	
	int i=0, cont=0;
 	char nome1[20], esp;
 	
 	printf("Insira uma palavra de até 20 caracteres\n");
 	gets(nome1);
 	
	printf("Insira um caractere\n");
 	esp=getchar();

 	
 	
 	for (i=0;nome1[i];i++){
 		if (nome1[i]==esp){
 			cont++;
 			printf("lol%d\n", cont);
		 }
	 }
 	
 	printf("O caractere %c aparece %d vezes na palavra %s", esp, cont, nome1);
 	
 	return 0;
 }
