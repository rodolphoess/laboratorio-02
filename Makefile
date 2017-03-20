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
LIB_DIR1=.Q1/lib
INC_DIR1=.Q1/include
SRC_DIR1=.Q1/src
OBJ_DIR1=.Q1/build
BIN_DIR1=.Q1/bin
DOC_DIR1=.Q1/doc
TEST_DIR1=.Q1/test

LIB_DIR2=.Q2/lib
INC_DIR2=.Q2/include
SRC_DIR2=.Q2/src
OBJ_DIR2=.Q2/build
BIN_DIR2=.Q2/bin
DOC_DIR2=.Q2/doc
TEST_DIR2=.Q2/test

LIB_DIR3=.Q3/lib
INC_DIR3=.Q3/include
SRC_DIR3=.Q3/src
OBJ_DIR3=.Q3/build
BIN_DIR3=.Q3/bin
DOC_DIR3=.Q3/doc
TEST_DIR3=.Q3/test

LIB_DIR4=.Q4/lib
INC_DIR4=.Q4/include
SRC_DIR4=.Q4/src
OBJ_DIR4=.Q4/build
BIN_DIR4=.Q4/bin
DOC_DIR4=.Q4/doc
TEST_DIR4=.Q4/test

LIB_DIR5=.Q5/lib
INC_DIR5=.Q5/include
SRC_DIR5=.Q5/src
OBJ_DIR5=.Q5/build
BIN_DIR5=.Q5/bin
DOC_DIR5=.Q5/doc
TEST_DIR5=.Q5/test

LIB_DIR6=.Q6/lib
INC_DIR6=.Q6/include
SRC_DIR6=.Q6/src
OBJ_DIR6=.Q6/build
BIN_DIR6=.Q6/bin
DOC_DIR6=.Q6/doc
TEST_DIR6=.Q6/test

# Nome do programa
PROG1=sequencia
PROG2=mdc
PROG3=dec2bin
PROG4=palindromo
PROG5=quadrado_iterativo
PROG6=quadrado_recursivo
PROG7=ternaria
 
# Opcoes de compilacao
CFLAGS=-Wall -pedantic -ansi -std=c++11 -I. -I$(INC_DIR)

# Garante que os alvos desta lista nao sejam confundidos com arquivos de mesmo nome
.PHONY: all clean doxy debug doc

# Define o alvo (target) para a compilacao completa.
# Ao final da compilacao, remove os arquivos objeto.
all: $(PROG1) $(PROG2) $(PROG3) $(PROG4) $(PROG5) $(PROG6) $(PROG7)

debug: CFLAGS += -g -O0
debug: $(PROG1) $(PROG2) $(PROG3) $(PROG4) $(PROG5) $(PROG6) $(PROG7)




# Alvo (target) para a construcao do executavel sequencia
# Define os arquivos *.o como dependencias
$(PROG1): $(OBJ_DIR1)/funcaoA.o $(OBJ_DIR1)/funcaoB.o $(OBJ_DIR1)/sequencia.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR1)/$@ $^
	@echo "+++ [Executavel 'sequencia' criado em $(BIN_DIR1)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto funcaoA.o
# Define os arquivos funcaoA.cpp e funcaoA.h como dependencias.
$(OBJ_DIR1)/funcaoA.o: $(SRC_DIR1)/funcaoA.cpp $(INC_DIR1)/funcaoA.h
	$(CC) -c $(CFLAGS) -o $@ $<

# Alvo (target) para a construcao do objeto funcaoB.o
# Define os arquivos funcaoB.cpp e funcaoB.h como dependencias.
$(OBJ_DIR1)/funcaoB.o: $(SRC_DIR1)/funcaoB.cpp $(INC_DIR1)/funcaoB.h
	$(CC) -c $(CFLAGS) -o $@ $<

# Alvo (target) para a construcao do objeto sequencia.o
# Define os arquivos sequencia.cpp como dependencias.
$(OBJ_DIR1)/sequencia.o: $(SRC_DIR1)/sequencia.cpp
	$(CC) -c $(CFLAGS) -o $@ $<




# Alvo (target) para a construcao do executavel mdc
# Define os arquivos *.o como dependencias
$(PROG2): $(OBJ_DIR2)/mdc.o $(OBJ_DIR2)/main.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR2)/$@ $^
	@echo "+++ [Executavel 'mdc' criado em $(BIN_DIR2)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto mdc.o
# Define os arquivos mdc.cpp e mdc.h como dependencias.
$(OBJ_DIR2)/mdc.o: $(SRC_DIR2)/mdc.cpp $(INC_DIR2)/mdc.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR2)/main.o: $(SRC_DIR2)/main.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel dec2bin
# Define os arquivos *.o como dependencias
$(PROG3): $(OBJ_DIR3)/bin.o $(OBJ_DIR3)/main.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR3)/$@ $^
	@echo "+++ [Executavel 'dec2bin' criado em $(BIN_DIR3)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto bin.o
# Define os arquivos bin.cpp e bin.h como dependencias.
$(OBJ_DIR3)/bin.o: $(SRC_DIR3)/bin.cpp $(INC_DIR3)/bin.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR3)/main.o: $(SRC_DIR3)/main.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel palindromo
# Define os arquivos *.o como dependencias
$(PROG4): $(OBJ_DIR4)/palindromo.o $(OBJ_DIR4)/main.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR4)/$@ $^
	@echo "+++ [Executavel 'palindromo' criado em $(BIN_DIR4)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto palindromo.o
# Define os arquivos palindromo.cpp e palindromo.h como dependencias.
$(OBJ_DIR4)/palindromo.o: $(SRC_DIR4)/palindromo.cpp $(INC_DIR4)/palindromo.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR4)/main.o: $(SRC_DIR4)/main.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel quadrado_iterativo
# Define os arquivos *.o como dependencias
$(PROG5): $(OBJ_DIR5)/quadrado_iterativo.o $(OBJ_DIR5)/mainIterativo.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR5)/$@ $^
	@echo "+++ [Executavel 'quadrado_iterativo' criado em $(BIN_DIR5)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto quadrado_iterativo.o
# Define os arquivos quadrado_iterativo.cpp e quadrado_iterativo.h como dependencias.
$(OBJ_DIR5)/quadrado_iterativo.o: $(SRC_DIR5)/quadrado_iterativo.cpp $(INC_DIR5)/quadrado_iterativo.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto mainIterativo.o
# Define os arquivos mainIterativo.cpp como dependencias.
$(OBJ_DIR5)/mainIterativo.o: $(SRC_DIR5)/mainIterativo.cpp
	$(CC) -c $(CFLAGS) -o $@ $<	




# Alvo (target) para a construcao do executavel quadrado_recursivo
# Define os arquivos *.o como dependencias
$(PROG6): $(OBJ_DIR5)/quadrado_recursivo.o $(OBJ_DIR5)/mainRecursivo.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR5)/$@ $^
	@echo "+++ [Executavel 'quadrado_recursivo' criado em $(BIN_DIR5)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto quadrado_recursivo.o
# Define os arquivos quadrado_recursivo.cpp e quadrado_recursivo.h como dependencias.
$(OBJ_DIR5)/quadrado_recursivo.o: $(SRC_DIR5)/quadrado_recursivo.cpp $(INC_DIR5)/quadrado_recursivo.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto mainRecursivo.o
# Define os arquivos mainRecursivo.cpp como dependencias.
$(OBJ_DIR5)/mainRecursivo.o: $(SRC_DIR5)/mainRecursivo.cpp
	$(CC) -c $(CFLAGS) -o $@ $<		




# Alvo (target) para a construcao do executavel ternaria
# Define os arquivos *.o como dependencias
$(PROG7): $(OBJ_DIR6)/buscaT.o $(OBJ_DIR6)/main.o
	@echo "============="
	@echo "Ligando o alvo $@"
	@echo "============="
	$(CC) $(CFLAGS) -o $(BIN_DIR6)/$@ $^
	@echo "+++ [Executavel 'ternaria' criado em $(BIN_DIR6)] +++"
	@echo "============="

# Alvo (target) para a construcao do objeto buscaT.o
# Define os arquivos buscaT.cpp e buscaT.h como dependencias.
$(OBJ_DIR6)/buscaT.o: $(SRC_DIR6)/buscaT.cpp $(INC_DIR6)/buscaT.h
	$(CC) -c $(CFLAGS) -o $@ $<	

# Alvo (target) para a construcao do objeto main.o
# Define os arquivos main.cpp como dependencias.
$(OBJ_DIR6)/main.o: $(SRC_DIR6)/main.cpp
	$(CC) -c $(CFLAGS) -o $@ $<		

