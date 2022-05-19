#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    int x =1;

    for(int i=1;i<=10;i++){
        x=i*9;
        printf("9 x %d = %d \n", i, x);
    }
    


    return 0;
}