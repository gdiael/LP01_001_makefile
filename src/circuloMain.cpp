#include <iostream>
#include "circulo.h"

using namespace std;

int main (void){
    Circulo   circulo(4);

    cout << "CALCULANDO ÁREA DE FORMA GEOMÉTRICA[Circulo]" << endl;
    cout << "Circulo:   \t"<< circulo.calculaArea()<< endl;

    return EXIT_SUCCESS;
}