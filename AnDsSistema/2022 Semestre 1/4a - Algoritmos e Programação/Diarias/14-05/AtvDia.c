#include <stdio.h>
#include <windows.h>

int main(){
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    int x=1;
    
    while (x<=15){
        printf("Desafio de programação dia %d\n", x);
        x++;
    }

    return 0;
}