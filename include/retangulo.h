#ifndef RETANGULO_H
#define RETANGULO_H

#include <cmath>

class Retangulo{
    private:
        float base;
        float altura;

    public:
        Retangulo();
        Retangulo(float base, float altura);
        ~Retangulo();

        float getBase();
        float getAltura();
        float calculaArea();
};
#endif