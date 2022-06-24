 #include <stdio.h>
 #include <string.h>

 int main(){
	
	int i=0, cont=0;
 	char nome1[20], nome2[20], nome3[20];
 	
 	printf("Insira uma palavra de até 20 caracteres\n");
 	gets(nome1);
 	
 	printf("Insira outra palavra de até 20 caracteres\n");
 	gets(nome2);
 	
 	printf("Insira mais uma palavra de até 20 caracteres\n");
 	gets(nome3);
 	
 	
 	
	
	if(strcmpi(nome1, nome2)>1 && strcmpi(nome1, nome3)>1){								//Plano B
		printf("A ordem alfabética é %s %s", nome1, nome2);
	} else {
		printf("A ordem alfabética é %s %s", nome2, nome1);
	}
 
 	return 0;
 }
