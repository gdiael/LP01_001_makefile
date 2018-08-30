# Aula sobre o programa makefile
## Como usar e quando usar?

O programa make file, nesse caso, é usado para agilizar e simplificar o processo de complilação dos arquivos fonte, como foi usado na aula de **Linguagem de Programação I**, e a Linguagem escolhida para trabalhar nesta discíplina foi **C++** 

## Exemplo de uso:

> O exemplo a seguir encontra-se por completo no arquivo makefile no diretório raiz deste repositório.

Primeiro criamos variáveis para "guardar" os trechos do script que serão mais úteis, e facilitarão futuras alterações no formato da execução e compilação.
Assim criamos variáveis para os caminhos das pastas e para os códigos de compilação:

```
CC = g++

OBJ = ./build
SRC = ./src
BIN = ./bin
INC = ./include

PROG1 = $(BIN)/test_cir
PROG2 = $(BIN)/test_ret
PROG3 = $(BIN)/test_tri
 
CPPFLAGS = -Wall -pedantic -std=c++11 -I$(INC)
```

Note que nesse caso vão ser criados três executáveis e que editamos os comando de compilação para executar nos formatos `pendantic` e `Wall` que ativam todos os avisos de erros e só executam a compilação quando estes são sanados.

Abaixo vemos o restante do código e parte da compilação final:

```
OBJ1 = $(OBJ)/circulo.o $(OBJ)/circuloMain.o
OBJ2 = $(OBJ)/retangulo.o $(OBJ)/retanguloMain.o
OBJ3 = $(OBJ)/triangulo.o $(OBJ)/trianguloMain.o

all: mkdirs $(PROG1) $(PROG2) $(PROG3)

mkdirs:
	mkdir -p $(BIN)
	mkdir -p $(OBJ)

$(PROG1): $(OBJ1)
	$(CC) $(CPPFLAGS) -o $(PROG1) $(OBJ1)
```

Onde podemos quebrar a execução do script nas seguintes etapas:
...Continuar anotações depois...
