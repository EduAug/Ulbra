#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    SetConsoleOutputCP(CPAGE_UTF8);

    int x,f ;
    f=10;
    for (x=1;x<f;x++){
    	if (x%2==0){
    		f++;
    		printf ("%d\n",x);
    		printf ("%d\n", f);
    		continue;
		}
		if(f==x){
			break;
		}
	}
	
	printf("X = %d\n", x);
	printf("F = %d\n", f);
    return 0;
}
