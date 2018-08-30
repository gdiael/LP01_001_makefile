# Exemplo de Makefile 
# Aula de LP1 2018.2
# 09/08/2018
# Clonagem do código para testes : git clone https://github.com/imdcode/makeaula.git
#
# Gdiael Souto Barros
#

CC = g++

OBJ = ./build
SRC = ./src
BIN = ./bin
INC = ./include

PROG1 = $(BIN)/test_cir
PROG2 = $(BIN)/test_ret
PROG3 = $(BIN)/test_tri

CPPFLAGS = -Wall -pedantic -std=c++11 -I$(INC)

OBJ1 = $(OBJ)/circulo.o $(OBJ)/circuloMain.o
OBJ2 = $(OBJ)/retangulo.o $(OBJ)/retanguloMain.o
OBJ3 = $(OBJ)/triangulo.o $(OBJ)/trianguloMain.o

all: mkdirs $(PROG1) $(PROG2) $(PROG3)

mkdirs:
	mkdir -p $(BIN)
	mkdir -p $(OBJ)

$(PROG1): $(OBJ1)
	$(CC) $(CPPFLAGS) -o $(PROG1) $(OBJ1)

$(PROG2): $(OBJ2)
	$(CC) $(CPPFLAGS) -o $(PROG2) $(OBJ2)

$(PROG3): $(OBJ3)
	$(CC) $(CPPFLAGS) -o $(PROG3) $(OBJ3)

$(OBJ)/circulo.o: $(SRC)/circulo.cpp $(INC)/circulo.h
	$(CC) $(CPPFLAGS) -c $(SRC)/circulo.cpp -o $(OBJ)/circulo.o

$(OBJ)/retangulo.o: $(SRC)/retangulo.cpp $(INC)/retangulo.h
	$(CC) $(CPPFLAGS) -c $(SRC)/retangulo.cpp -o $(OBJ)/retangulo.o

$(OBJ)/triangulo.o: $(SRC)/triangulo.cpp $(INC)/triangulo.h
	$(CC) $(CPPFLAGS) -c $(SRC)/triangulo.cpp -o $(OBJ)/triangulo.o

$(OBJ)/circuloMain.o: $(SRC)/circuloMain.cpp $(INC)/circulo.h
	$(CC) $(CPPFLAGS) -c $(SRC)/circuloMain.cpp -o $(OBJ)/circuloMain.o

$(OBJ)/retanguloMain.o: $(SRC)/retanguloMain.cpp $(INC)/retangulo.h
	$(CC) $(CPPFLAGS) -c $(SRC)/retanguloMain.cpp -o $(OBJ)/retanguloMain.o

$(OBJ)/trianguloMain.o: $(SRC)/trianguloMain.cpp $(INC)/triangulo.h
	$(CC) $(CPPFLAGS) -c $(SRC)/trianguloMain.cpp -o $(OBJ)/trianguloMain.o

clean: 
	rm -f $(BIN)/*
	rm -f $(OBJ)/*