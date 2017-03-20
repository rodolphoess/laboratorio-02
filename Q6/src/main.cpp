/**
 * @file 		main.cpp
 * @brief		Programa recursivo para buscar se um número inserido pelo usuário está contido em um vetor.
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include <cstdlib>
#include "buscaT.h"

using namespace std;

/**
 * @brief		Função principal do programa.
 * @details 	A função principal recebe os parâmetros ainda na linha de comando e os repassa para a função específica para buscar dentro do vetor se o número desejado pertence ou não a base de dados.
 */
int main(int argc, char *argv[]) {
	int vetor[] = {2, 5, 9, 11, 13, 17, 22, 24, 33, 38, 39, 40, 45, 56, 71, 99, 110, 113, 132, 155, 166, 203, 211, 212, 230, 233};
	int numero = atoi(argv[1]);
	int tamanhoVetor = sizeof(vetor) / sizeof(vetor[0]);

	bool resultado = buscaTernaria(vetor, 0, tamanhoVetor - 1, numero);

	if (resultado) {
		cout << "O elemento " << numero << " faz parte do vetor." << endl;
	} else {
		cout << "O elemento " << numero << " nao faz parte do vetor." << endl;
	}

	return 0;
}