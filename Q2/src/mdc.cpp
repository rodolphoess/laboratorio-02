/**
 * @file		mdc.cpp
 * @brief		Função para cálculo recursivo do MDC de dois números inseridos pelo usuário.
 * @author		Rodolpho Erick
 * @since		18/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include "mdc.h"

using namespace std;

/**
 * @brief		Função para cálculo recursivo do MDC de dois números inseridos pelo usuário. 	
 * @param 		dividendo Representa um dos números passados pelo usuário que fará o papel do dividendo da divisão.
 * @param 		devisor Representa um dos valores passados pelo usuário que fará o papel do divisor da divisão.
 * @return 		Retorna o último número diferente de zero durante a chamada recursiva da função, esse número será o MDC.
 */
int mdc(int dividendo, int divisor) {
	int resto;

	if (divisor == 0) {
		return dividendo;
	} else {
		resto = dividendo % divisor;
		dividendo = divisor;
		divisor = resto;
		return mdc(dividendo, divisor);
	}
}