/**
 * @file 		main.cpp
 * @brief		Programa recursivo para cálculo da representação binária de um número natural.
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		19/03/2017
 */ 
#include <iostream>
#include "bin.h"

using namespace std;

/**
 * @brief		Função principal do programa.
 * @details 	A função principal recebe um número natural inserido pelo usuário e chama uma função para cálculo da conversão para binário.
 */
int main() {
	int num, pot = 1, bin = 0;

	do {
		cout << "Digite um numero: ";
		cin >> num;
	} while(num < 0);

	cout << "\nRepresentacao de " << num << " na forma binaria: " << dec2bin(num, pot, bin) << endl;

	return 0;
}