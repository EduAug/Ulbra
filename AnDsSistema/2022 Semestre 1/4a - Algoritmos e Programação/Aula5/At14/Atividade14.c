#include <stdio.h>

int main(){
    int nascimento, atual, idade, idadefutura;
    printf("Insira seu ano de nascimento:\n");
    scanf("%d%*c", &nascimento);
    printf("Insira o ano vigente:\n");
    scanf("%d%*c", &atual);
    idade=atual-nascimento;
    idadefutura=2050-nascimento;
    printf("Sua idade é %d anos\n", idade);
    printf("Sua idade em 2050 será %d anos\n", idadefutura);

    return 0;
}