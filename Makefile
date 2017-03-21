# Exemplo completo de um Makefile, separando os diferentes elementos da aplicacao
# como codigo (src), cabecalhos (include), executaveis (build), bibliotecas (lib), etc.
# Cada elemento e alocado em uma pasta especifica, organizando melhor seu codigo fonte.
#
# Algumas variaveis sao usadas com significado especial:
#
# $@ nome do alvo (target)
# $^ lista com os nomes de todos os pre-requisitos sem duplicatas
# $< nome do primeiro pre-requisito
#

# Comandos do sistema operacional
# Linux: rm -rf 
# Windows: cmd //C del 
RM = rm -rf 

# Compilador
CC=g++ 

# Variaveis para os subdiretorios
LIB_DIR=./lib
INC_DIR=./include
SRC_DIR=./src
OBJ_DIR=./build
DOC_DIR=./doc
TEST_DIR=./test

# Nome do programa
PROG1=sequencia
PROG2=mdc
PROG3=dec2bin
PROG4=palindromo
PROG5=quadrado_iterativo
PROG6=quadrado_recursivo
PROG7=ternaria

# Opcoes de compilacao
CFLAGS=-Wall -pedantic -ansi -std=c++11 -g -O0 -I. -I$(INC_DIR)

# Garante que os alvos desta lista nao sejam confundidos com arquivos de mesmo nome
.PHONY: all clean doxy debug doc

# Define o alvo (target) para a compilacao completa.
# Ao final da compilacao, remove os arquivos objeto.
all: $(PROG1) $(PROG2) $(PROG3) $(PROG4) $(PROG5) $(PROG6) $(PROG7)

debug: CFLAGS += -g -O0
debug: $(PROG1) $(PROG2) $(PROG3) $(PROG4) $(PROG5) $(PROG6) $(PROG7)




# Alvo (target) para a construcao do executavel sequencia
# Define os arquivos *.o como dependencias
$(PROG1): CFLAGS += -I$(INC_DIR)/Q1
$(PROG1): BIN_DIR=./bin/Q1
$(PROG1): $(OBJ_DIR)/Q1/funcaoA.o $(OBJ_DIR)/Q1/funcaoB.o $(OBJ_DIR)/Q1/sequencia.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel 'sequencia' criado em $(BIN_DIR)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto funcaoA.o
# Define os arquivos funcaoA.cpp e funcaoA.h como dependencias.
$(OBJ_DIR)/Q1/funcaoA.o: $(SRC_DIR)/Q1/funcaoA.cpp $(INC_DIR)/Q1/funcaoA.h
	$(CC) -c $(CFLAGS) -o $@ $<

# Alvo (target) para a construcao do objeto funcaoB.o
# Define os arquivos funcaoB.cpp e funcaoB.h como dependencias.
$(OBJ_DIR)/Q1/funcaoB.o: $(SRC_DIR)/Q1/funcaoB.cpp $(INC_DIR)/Q1/funcaoB.h
	$(CC) -c $(CFLAGS) -o $@ $<

# Alvo (target) para a construcao do objeto sequencia.o
# Define os arquivos sequencia.cpp como dependencias.
$(OBJ_DIR)/Q1/sequencia.o: $(SRC_DIR)/Q1/sequencia.cpp
	$(CC) -c $(CFLAGS) -o $@ $<




# Alvo (target) para a construcao do executavel mdc
# Define os arquivos *.o como dependencias
$(PROG2): CFLAGS += -I$(INC_DIR)/Q2
$(PROG2): BIN_DIR=./bin/Q2
$(PROG2): $(OBJ_DIR)/Q2/mdc.o $(OBJ_DIR)/Q2/mainq2.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel 'mdc' criado em $(BIN_DIR)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto mdc.o
# Define os arquivos mdc.cpp e mdc.h como dependencias.
$(OBJ_DIR)/Q2/mdc.o: $(SRC_DIR)/Q2/mdc.cpp $(INC_DIR)/Q2/mdc.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR)/Q2/mainq2.o: $(SRC_DIR)/Q2/mainq2.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel dec2bin
# Define os arquivos *.o como dependencias
$(PROG3): CFLAGS += -I$(INC_DIR)/Q3 
$(PROG3): BIN_DIR=./bin/Q3
$(PROG3): $(OBJ_DIR)/Q3/bin.o $(OBJ_DIR)/Q3/mainq3.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel 'dec2bin' criado em $(BIN_DIR)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto bin.o
# Define os arquivos bin.cpp e bin.h como dependencias.
$(OBJ_DIR)/Q3/bin.o: $(SRC_DIR)/Q3/bin.cpp $(INC_DIR)/Q3/bin.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR)/Q3/mainq3.o: $(SRC_DIR)/Q3/mainq3.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel palindromo
# Define os arquivos *.o como dependencias
$(PROG4): CFLAGS += -I$(INC_DIR)/Q4
$(PROG4): BIN_DIR=./bin/Q4
$(PROG4): $(OBJ_DIR)/Q4/palindromo.o $(OBJ_DIR)/Q4/mainq4.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel 'palindromo' criado em $(BIN_DIR)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto palindromo.o
# Define os arquivos palindromo.cpp e palindromo.h como dependencias.
$(OBJ_DIR)/Q4/palindromo.o: $(SRC_DIR)/Q4/palindromo.cpp $(INC_DIR)/Q4/palindromo.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR)/Q4/mainq4.o: $(SRC_DIR)/Q4/mainq4.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel quadrado_iterativo
# Define os arquivos *.o como dependencias
$(PROG5): CFLAGS += -I$(INC_DIR)/Q5
$(PROG5): BIN_DIR=./bin/Q5
$(PROG5): $(OBJ_DIR)/Q5/quadrado_iterativo.o $(OBJ_DIR)/Q5/mainIterativo.o
	@echo "============"
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel 'quadrado_iterativo' criado em $(BIN_DIR)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto quadrado_iterativo.o
# Define os arquivos quadrado_iterativo.cpp e quadrado_iterativo.h como dependencias.
$(OBJ_DIR)/Q5/quadrado_iterativo.o: $(SRC_DIR)/Q5/quadrado_iterativo.cpp $(INC_DIR)/Q5/quadrado_iterativo.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto mainIterativo.o
# Define os arquivos mainIterativo.cpp como dependencias.
$(OBJ_DIR)/Q5/mainIterativo.o: $(SRC_DIR)/Q5/mainIterativo.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel quadrado_recursivo
# Define os arquivos *.o como dependencias
$(PROG6): CFLAGS += -I$(INC_DIR)/Q5
$(PROG6): BIN_DIR=./bin/Q5
$(PROG6): $(OBJ_DIR)/Q5/quadrado_recursivo.o $(OBJ_DIR)/Q5/mainRecursivo.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel 'quadrado_recursivo' criado em $(BIN_DIR)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto quadrado_recursivo.o
# Define os arquivos quadrado_recursivo.cpp e quadrado_recursivo.h como dependencias.
$(OBJ_DIR)/Q5/quadrado_recursivo.o: $(SRC_DIR)/Q5/quadrado_recursivo.cpp $(INC_DIR)/Q5/quadrado_recursivo.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto mainRecursivo.o
# Define os arquivos mainRecursivo.cpp como dependencias.
$(OBJ_DIR)/Q5/mainRecursivo.o: $(SRC_DIR)/Q5/mainRecursivo.cpp
	$(CC) -c $(CFLAGS) -o $@ $<		




# Alvo (target) para a construcao do executavel ternaria
# Define os arquivos *.o como dependencias
$(PROG7): CFLAGS += -I$(INC_DIR)/Q6
$(PROG7): BIN_DIR=./bin/Q6
$(PROG7): $(OBJ_DIR)/Q6/buscaT.o $(OBJ_DIR)/Q6/mainq6.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $^
	@echo "+++ [Executavel 'ternaria' criado em $(BIN_DIR)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto buscaT.o
# Define os arquivos buscaT.cpp e buscaT.h como dependencias.
$(OBJ_DIR)/Q6/buscaT.o: $(SRC_DIR)/Q6/buscaT.cpp $(INC_DIR)/Q6/buscaT.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR)/Q6/mainq6.o: $(SRC_DIR)/Q6/mainq6.cpp
	$(CC) -c $(CFLAGS) -o $@ $<		

