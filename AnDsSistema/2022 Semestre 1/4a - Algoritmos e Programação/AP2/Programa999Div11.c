#include <stdio.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
	int i=1000;
		
	while(i<2000){
		if(i % 11 == 5){
		printf("%d resta 5 quando divido por 11\n", i);
		}
		i++;
	}
	

    return 0;
}