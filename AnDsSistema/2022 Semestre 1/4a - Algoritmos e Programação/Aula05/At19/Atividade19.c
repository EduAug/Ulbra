#include <stdio.h>

int main(){
    float altEsca, altUser, qntDegr;
    printf("Qual a altura dos degraus, em metros? (Utilize '.' no lugar de ',')\n");
    scanf("%f%*c", &altEsca);
    printf("Quantos metros gostaria de subir?\n");
    scanf("%f%*c", &altUser);
    qntDegr=altUser/altEsca;
    printf("Para chegar a esta altura é necessário subir %.2f degraus\n", qntDegr);

    return 0;
}