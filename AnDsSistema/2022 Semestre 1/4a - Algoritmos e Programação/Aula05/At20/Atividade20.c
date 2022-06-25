#include <stdio.h>
#include <math.h>

int main(){
    float angEsca, altPare, tamEsca, medRad;
    printf("Insira a angulação da escada (em graus):\n");
    scanf("%f%*c", &angEsca);
    printf("Insira a altura da parede: \n");
    scanf("%f%*c", &altPare);
    medRad=(angEsca*3.1415)/180; //Conversão de graus em radianos, 1° = 1*pi/(1/2 circunf) rad
    tamEsca=altPare/sin(medRad); //Seno=Cat. Op./Hipotenusa, Hipotenusa=Cat. Op./Seno
    printf("O tamanho da escada é de %.2f metros \n", tamEsca);

    return 0;
}