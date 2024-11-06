programa
{
	funcao inicio()
	{
		// Declaração de uma variável real para armazenar a nota digitada
		real nota
		// Declaração de uma variável real para acumular a soma das notas, inicializada em 0
		real somaNotas=0
		// Declaração de um contador para contar as notas válidas, inicializado em 0
		inteiro contador =0

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
				// Adiciona a nota à soma total das notas
				somaNotas = somaNotas + nota
				// Incrementa o contador de notas válidas
				contador = contador + 1
			}
		}
		// O loop continuará enquanto a nota digitada for maior ou igual a zero
		enquanto (nota >= 0)

		// Verifica se o contador é maior que 0 para evitar divisão por zero
		se (contador > 0)
		{
			// Calcula a média das notas válidas
			real media = somaNotas / contador
			// Exibe a média das notas calculadas
			escreva("A média das notas é: ", media)
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
 * @POSICAO-CURSOR = 646; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */