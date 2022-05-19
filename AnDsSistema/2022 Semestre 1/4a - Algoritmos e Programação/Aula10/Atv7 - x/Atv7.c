#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);

    int i = 21;

    do{
        i=i-1;
        printf(" %d -", i);
    }while(i!=0);

    return 0;
}