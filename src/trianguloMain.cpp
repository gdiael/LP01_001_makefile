#include <iostream>
#include "triangulo.h"

using namespace std;

int main (void){
    Triangulo triangulo(2,3);

    cout << "CALCULANDO ÁREA DE FORMA GEOMÉTRICA[Triangulo]" << endl;
    cout << "Triangulo: \t"<< triangulo.calculaArea() << endl;

    return EXIT_SUCCESS;
}