/**
 * @file		palindromo.cpp
 * @author		Rodolpho Erick
 * @since		18/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include "palindromo.h"

using namespace std;

/**
 * @brief		Função para verificar se a palavra inserida pelo usuário é um palindromo.	
 * @param 		vetor Representa o vetor no qual a palavra digitada está armazenada.
 * @param 		tamanho Representa o tamanho da palavra inserida pelo usuário.
 * @param		posicao Representa uma variável de controle, para certificar em qual posição do vetor está havendo a checagem de igualdade.
 * @return 		Retorna se a palavra é ou não um palíndromo.
 */
bool palin(char *vetor, int tamanho, int posicao) {
	if (posicao < tamanho / 2) {
		if (vetor[posicao] == vetor[tamanho - 1 - posicao]) {
			return palin(vetor, tamanho, posicao + 1);
		} else {
			return false;
		}
	} 

	return true;
}