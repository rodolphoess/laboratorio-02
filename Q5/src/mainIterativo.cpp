/**
 * @file 		mainIterativo.cpp
 * @brief		Programa iterativo para cálculo do quadrado de um número natural.
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include <cstdlib>
#include "quadrado_iterativo.h"

using namespace std;

/**
 * @brief		Função principal do programa.
 * @details 	A função principal recebe os parâmetros ainda na linha de comando e os repassa para a função específica para cálculo iterativo do quadrado do número natural.
 */
int main(int argc, char *argv[]) {
	int numero = atoi(argv[1]);
	int quadrado = numero * numero;			//Ao usar a função pow da biblioteca cmath, a operacao com o parametro sendo passado por linha de comando estava ocasionando em alguns erros para alguns numeros, tais como o 5, 10, 11, etc.
	int dobroNum = 2 * numero;			

	if (numero == 1) {
		cout << "\nquadrado(" << numero << ") => " << numero << endl;
	} else {
		cout << "\nquadrado(" << numero << ") => 1";
		int resultado = quadradoIterativo(dobroNum, quadrado);
		cout << " = " << resultado << endl;
	}	

	return 0;
}