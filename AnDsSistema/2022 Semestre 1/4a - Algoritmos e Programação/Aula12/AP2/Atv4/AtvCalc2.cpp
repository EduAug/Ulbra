#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	int x=3, y;
	y=pow(x,2);
	printf("%d\n",y);
	x=int(sqrt(y));
	printf("%d\n",x);
	y+=x;
	printf("%d\n",y);
	x=(y+x)*2;
	printf("%d\n",x);
	y=(x+x)/3;
	printf("%d\n",y);
	printf("%i", x+y);	
	
	return 0;
}
