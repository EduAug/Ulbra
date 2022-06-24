#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
	float x=3, y=2;
	y+=x;
	printf("%f\n",y);
	x++;
	printf("%f\n",x);
	y--;
	printf("%f\n",y);
	x*=y;
	printf("%f\n",x);
	y/=3;
	printf("%f\n",y);
	printf("%07.2f", x+y);	
	
	return 0;
}
