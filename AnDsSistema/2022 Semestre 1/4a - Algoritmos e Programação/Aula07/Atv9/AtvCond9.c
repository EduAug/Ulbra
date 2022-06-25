#include <stdio.h>
#include <math.h>
#include <windows.h>
#include <time.h>

int main() {
UINT CPAGE_UTF8 = 65001;
UINT CPAGE_DEFAULT = GetConsoleOutputCP();
SetConsoleOutputCP(CPAGE_UTF8);
    time_t hora;
    time(&hora);


    struct tm *dia = localtime(&hora);

    printf("Hoje é \n");
    printf("%i/", dia->tm_mday);

    dia->tm_mon;
    if(dia->tm_mon==0){
        printf("Janeiro/");
    }
    if(dia->tm_mon==1){
        printf("Fevereiro/");
    }
    if(dia->tm_mon==2){
        printf("Março/");
    }
    if(dia->tm_mon==3){
        printf("Abril/");
    }
    if(dia->tm_mon==4){
        printf("Maio/");
    }
    if(dia->tm_mon==5){
        printf("Junho/");
    }
    if(dia->tm_mon==6){
        printf("Julho/");
    }
    if(dia->tm_mon==7){
        printf("Agosto/");
    }
    if(dia->tm_mon==8){
        printf("Setembro/");
    }
    if(dia->tm_mon==9){
        printf("Outubro/");
    }
    if(dia->tm_mon==10){
        printf("Novembro/");
    }
    if(dia->tm_mon==11){
        printf("Dezembro/");
    }

    printf("%i \n", dia->tm_year+1900);

    printf("Agora são \n");
    printf("%02i:", dia->tm_hour);
    printf("%02i", dia->tm_min);

    return 0;
}