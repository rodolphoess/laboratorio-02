/**
 * @file 		mainRecursivo.cpp
 * @brief		Programa recursivo para cálculo do quadrado de um número natural.
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include <cstdlib>
#include "quadrado_recursivo.h"

using namespace std;

/**
 * @brief		Função principal do programa.
 * @details 	A função principal recebe os parâmetros ainda na linha de comando e os repassa para a função específica para cálculo recursivo do quadrado do número natural.
 */
int main(int argc, char *argv[]) {
	int numero = atoi(argv[1]);
	int quadrado = numero * numero;			//Ao usar a função pow da biblioteca cmath, a operacao com o parametro sendo passado por linha de comando estava ocasionando em alguns erros para alguns numeros, tais como o 5, 10, 11, etc.
	int dobroNum = 2 * numero;
	/** @brief 	Define-se as variáveis resultado e temp iguais a 1 por considerar que sendo o número passado por parâmetro maior do que 1, o número 1 já estará dentro da soma dos números ímpares menores do que o dobro do número 
	 * 			informado. 
	 */
	int resultado = 1, temp = 1;		

	if (numero == 1) {
		cout << "\nquadrado(" << numero << ") => " << numero << endl;
	} else {
		cout << "\nquadrado(" << numero << ") => 1";
		resultado = quadradoRecursivo(dobroNum, quadrado, resultado, temp);
		cout << " = " << resultado << endl;
	}	

	return 0;
}