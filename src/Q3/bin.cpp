/**
 * @file		bin.cpp
 * @brief		Função para conversão recursiva de um número em base decimal para binário. 
 * @author		Rodolpho Erick
 * @since		18/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include "bin.h"

using namespace std;

/**
 * @brief		Função para conversão recursiva de um número em base decimal para binário.
 * @param 		num Representa o número passado pelo usuário para realizar a conversão.
 * @param 		potencia Número para controle e representação na conversão de decimal para binário. Faz-se uma analogia dessa variável ao controle de unidades, dezenas, centenas, etc.
 * @param		binario Representa o resultado da conversão da base decimal para binário.	
 * @return 		Retorna o resultado da conversão, com o número inserido em binário.
 */
int dec2bin(int num, int potencia, int binario) {
	binario += (num % 2) * potencia;
	num = num / 2;
	potencia = potencia * 10;	

	if (num <= 0) {
		return binario;
	} else {
		binario = dec2bin(num, potencia, binario);
	}

	return binario;	
}