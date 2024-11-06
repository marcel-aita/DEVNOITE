programa
{
	funcao inicio()
	{
		// Declaração de uma variável real para armazenar a nota digitada
		real nota
		// Declaração de uma variável real para armazenar o peso da nota
		real peso
		// Declaração de variáveis para acumular a soma das notas ponderadas e a soma dos pesos
		real somaNotasPonderadas = 0
		real somaPesos = 0
		// Declaração de um contador para contar as notas válidas, inicializado em 0
		inteiro contador = 0

		// Início do laço que solicitará notas ao usuário
		faca
		{
			// Exibe uma mensagem pedindo que o usuário digite uma nota
			escreva("Digite a nota do aluno (negativa para sair): ")
			// Lê a nota digitada pelo usuário e armazena na variável 'nota'
			leia(nota)

			// Verifica se a nota digitada é maior ou igual a zero
			se (nota >= 0) 
			{
				// Exibe uma mensagem pedindo o peso da nota
				escreva("Digite o peso da nota: ")
				// Lê o peso e armazena na variável 'peso'
				leia(peso)

				// Adiciona a nota ponderada à soma total das notas ponderadas
				somaNotasPonderadas = somaNotasPonderadas + (nota * peso)
				// Adiciona o peso à soma total dos pesos
				somaPesos = somaPesos + peso
				// Incrementa o contador de notas válidas
				contador = contador + 1
			}
		}
		// O loop continuará enquanto a nota digitada for maior ou igual a zero
		enquanto (nota >= 0)

		// Verifica se o contador é maior que 0 para evitar divisão por zero
		se (somaPesos > 0)
		{
			// Calcula a média ponderada
			real mediaPonderada = somaNotasPonderadas / somaPesos
			// Exibe a média ponderada das notas calculadas
			escreva("A média ponderada das notas é: ", mediaPonderada)
		}
		// Se o contador for zero, informa que nenhuma nota válida foi inserida
		senao
		{
			escreva("Nenhuma nota válida foi inserida.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1770; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */