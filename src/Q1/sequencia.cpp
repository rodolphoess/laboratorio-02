/**
 * @file 		sequencia.cpp
 * @brief		Programa recursivo para cálculo de soma fracionária de 1 até 1/N.
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		18/03/2017
 */ 
#include <iostream>
#include <cstdlib>
#include <cstring>
#include "funcaoA.h"
#include "funcaoB.h"

using namespace std;


/**
 * @brief		Função principal do programa.
 * @details 	A função principal recebe os parâmetros ainda na linha de comando e de acordo com eles faz o cálculo recursivo do tipo aninhado ou iterativo para duas sequências 
 *				pré determinadas.
 */
int main(int argc, char *argv[]) {
	
	if ((strcmp(argv[1], "A") == 0) && (strcmp(argv[2], "R") == 0)) {		
		cout.precision(2);
		cout << "\nO valor da sequencia " << argv[1] << " para N = " << argv[3] << " e " << fixed << recursaoA(atoi(argv[3]), 0, 0) << " (a versao recursiva foi usada)" << endl;
	} else if ((strcmp(argv[1], "A") == 0) && (strcmp(argv[2], "I") == 0)) {		
		cout.precision(2);
		cout << "\nO valor da sequencia " << argv[1] << " para N = " << argv[3] << " e " << fixed << iteracaoA(atoi(argv[3])) << " (a versao iterativa foi usada)" << endl;
	} else if ((strcmp(argv[1], "B") == 0) && (strcmp(argv[2], "R") == 0)) {		
		cout.precision(2);
		cout << "\nO valor da sequencia " << argv[1] << " para N = " << argv[3] << " e " << fixed << recursaoB(atoi(argv[3]), 0, 0) << " (a versao recursiva foi usada)" << endl;
	} else {	
		cout.precision(2);
		cout << "\nO valor da sequencia " << argv[1] << " para N = " << argv[3] << " e " << fixed << iteracaoB(atoi(argv[3])) << " (a versao iterativa foi usada)" << endl;
	}

	return 0;
}