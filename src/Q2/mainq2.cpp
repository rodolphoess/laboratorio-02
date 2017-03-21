/**
 * @file 		main.cpp
 * @brief		Programa recursivo para cálculo do MDC de dois números naturais.
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		18/03/2017
 */ 
#include <iostream>
#include "mdc.h"

using namespace std;

/**
 * @brief		Função principal do programa.
 * @details 	A função principal recebe os valores do usuário e repassa-os para a função que irá calcular o MDC.
 */
int main() {
	int num1, num2;

	do {
		cout << "Digite dois numeros naturais: ";
		cin >> num1 >> num2;
	} while(num1 < 0 || num2 < 0);

	cout << "\nMDC(" << num1 << ", " << num2 << ") = " << mdc(num1, num2) << endl;

	return 0;

}