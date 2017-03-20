/**
 * @file		quadrado_recursivo.cpp
 * @author		Rodolpho Erick
 * @since		18/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include "quadrado_recursivo.h"

using namespace std;

/**
 * @brief		Função para cálculo recursivo do quadrado de um número natural.	
 * @param 		dobroNum Representa o dobro do número inserido pelo usuário por linha de comando.
 * @param 		numQuadrado Representa o número já ao quadrado informado pelo usuário.
 * @param		resultado Representa o resultado da soma de todos os número ímpares anteriores ao dobro do número informado por linha de comando.	
 * @param		temp Variável de controle para checar se os números anteriores ao dobro são ímpares ou não, sendo ímpares soma-se esses valores à variável resultado.
 * @return 		Retorna o resultado da soma de todos os números ímpares que representarão o quadrado do número inserido.
 */
int quadradoRecursivo(int dobroNum, int numQuadrado, int resultado, int temp) {	
	temp++;

	if (resultado == numQuadrado) {
		return resultado;
	} else if(temp % 2 != 0) {
		cout << " + " << temp;
		resultado += temp;
	}	

	return quadradoRecursivo(dobroNum, numQuadrado, resultado, temp);
	
}	
