/**
 * @file		funcaoB.cpp
 * @brief		Função para cálculo recursivo e iterativo da sequencia A proposto no exercício.
 * @author		Rodolpho Erick
 * @since		18/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include <cmath>
#include "funcaoB.h"

using namespace std;

/**
 * @brief		Função para cálculo recursivo da sequencia B proposta no exercício do laboratório 2 de LP1.	
 * @param 		num Representa o número passado pelo usuário para realizar o cálculo da sequência.
 * @param 		temp Representa um valor para controle da recursao. O limite dessa variável é o valor do número passado pelo usuário.
 * @param		result Representa o resultado da soma da sequência, é ele que será exibido ao usuário.	
 * @return 		Retorna o resultado da soma representada pela sequência.
 */
float recursaoB(float num, float temp, float result) {
	temp++;

	if (temp == num) {
		result = result + ((pow(num, 2) + 1)/(num + 3));
		return result;
	} else {
		result = ((pow(temp, 2) + 1)/(temp + 3)) + recursaoB(num, temp, result);
		return result;
	}

}

/**
 * @brief		Função para cálculo iterativo da sequencia B proposta no exercício do laboratório 2 de LP1.
 * @param 		num Representa o número passado pelo usuário para realizar o cálculo da sequência.
 * @return 		Retorna o resultado da soma representada pela sequência.
 */
float iteracaoB(float num) {
	float result = 0;

	if (num == 1) {
		result = result + ((pow(num, 2) + 1)/(num + 3));
		return result;
	} else {
		for (float i = 1; i <= num; i++) {
			result += (pow(i, 2) + 1) / (i + 3);
		}		
	}
	return result;	
}