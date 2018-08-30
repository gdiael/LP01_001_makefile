#include <iostream>
#include "retangulo.h"

using namespace std;

int main (void){    
    Retangulo retangulo(4,4);

    cout << "CALCULANDO ÁREA DE FORMA GEOMÉTRICA[Retangulo]" << endl;
    cout << "Retangulo: \t"<< retangulo.calculaArea() << endl;

    return EXIT_SUCCESS;
}