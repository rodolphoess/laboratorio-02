/**
 * @file 		buscaT.cpp
 * @author		Rodolpho Erick
 * @since		16/03/2017
 * @data		19/03/2017
 */
#include <iostream>
#include "buscaT.h"

using namespace std;

/**
 * @brief		Função para busca de um valor chave informado pelo usuário dentro de um vetor ordenado.	
 * @param 		v Representa o vetor com a base de dados na qual está buscando se o elemento informado pelo usuário pertence ou não.
 * @param 		inicio Representa o inicio do vetor, possui valor dinâmico na medida que a função chama a si mesma recursivamente.
 * @param		fim Representa o final do vetor, possui valor dinâmico na medida que a função chama a si mesma recursivamente.
 * @param		x Variável chave a qual está em busca dentro do vetor. Ela foi informada pelo usuário.
 * @return 		Retorna se a variável x pertence ou não ao vetor.
 */
bool buscaTernaria(int *v, int inicio, int fim, int x) {

	while (inicio <= fim) {
		int ind1 = ((fim - inicio) / 3) + inicio;
		int ind2 = 2 * ((fim - inicio) / 3) + inicio;

		int pivot1 = v[ind1];			
		int pivot2 = v[ind2];		
					
		if (pivot1 == x) return true;
		if (pivot2 == x) return true;
		if (pivot1 > x) return buscaTernaria(v, inicio, ind1 - 1, x);
		if (pivot2 < x) return buscaTernaria(v, ind2 + 1, fim, x);
		if (pivot1 < x && pivot2 > x) return buscaTernaria(v, ind1 + 1, ind2 - 1, x);
	}

	return false;		//Não encontrou o elemento.	
}