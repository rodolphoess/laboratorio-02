/**
 * @file		quadrado_iterativo.cpp
 * @author		Rodolpho Erick
 * @since		18/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include "quadrado_iterativo.h"

using namespace std;

/**
 * @brief		Função para cálculo recursivo do quadrado de um número natural.	
 * @param 		dobroNum Representa o dobro do número inserido pelo usuário por linha de comando.
 * @param 		numQuadrado Representa o número já ao quadrado informado pelo usuário. 
 * @return 		Retorna o resultado da soma de todos os números ímpares que representarão o quadrado do número inserido.
 */
int quadradoIterativo(int dobroNum, int numQuadrado) {	
	int resultado = 1;

	for (int i = 2; i < dobroNum; ++i) {
		if (i % 2 != 0) {
			cout << " + " << i;
			resultado += i;
		}
	}

	return resultado;
	
}	
