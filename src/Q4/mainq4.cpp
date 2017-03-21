/**
 * @file 		main.cpp
 * @brief		Programa recursivo para verificar se uma palavra é palíndromo ou não.
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		19/03/2017
 */ 
#include <iostream>
#include <cstring>
#include "palindromo.h"

using namespace std;

/**
 * @brief		Função principal do programa.
 * @details 	A função principal recebe uma palavra inserida pelo usuário e a passa para uma função para verificar se trata-se de um palínromo.
 */
int main() {
	char palavra[50];

	cout << "\nDigite uma palavra: ";
	cin >> palavra;

	int tamanhoPalavra = strlen(palavra);	
	int posicao = 0;

	bool resultado = palin(palavra, tamanhoPalavra, posicao);

	if (resultado) {
		cout << "\"" << palavra << "\" e um palindromo" << endl;
	} else {
		cout << "\"" << palavra << "\" nao e um palindromo" << endl;
	}

	return 0;
}