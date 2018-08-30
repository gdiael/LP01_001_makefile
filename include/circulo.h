#ifndef CIRCULO_H
#define CIRCULO_H

#include <cmath>

class Circulo{
   private:
      float raio;
      
   public:
        Circulo();
        Circulo(float raio);
        ~Circulo();

        float getRaio();
        float getCircunferencia();
        float calculaArea();
};
#endif