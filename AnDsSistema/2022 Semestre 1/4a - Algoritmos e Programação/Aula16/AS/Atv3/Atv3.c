#include <stdio.h>
#include <math.h>
#include <locale.h>

int main(){
	
	char Palavra[42];
	int i=0, cont=0;
	int misc;
	
	setlocale(LC_ALL, "Portuguese");
	
	printf("Insira uma palavra: (Até 40 caracteres)\n");
	gets(Palavra);
	
	misc = strlen(Palavra);
	
	for(i=0;i<misc;i++){
		if(Palavra[i]=='a'||Palavra[i]=='A'||Palavra[i]=='e'||Palavra[i]=='E'||Palavra[i]=='i'||Palavra[i]=='I'||Palavra[i]=='o'||Palavra[i]=='O'||Palavra[i]=='u'||Palavra[i]=='U'){
			cont+=1;
		}
	}
	
	printf("%s possui %d vogais\n", Palavra, cont);
	printf("%s possui %d caracteres\n", Palavra, misc);
	
	
	
	return 0;
}
