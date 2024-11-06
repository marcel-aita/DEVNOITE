programa 
{
	funcao inicio() 
	{
		inteiro numero // Declara uma variável inteira para armazenar o número
		inteiro contadorPares=0 // Declara um contador para números pares
		

		faca { // Início do loop
			escreva("Digite um número (0 para sair): ") // Solicita ao usuário que insira um número
			leia(numero) // Lê o número fornecido e armazena na variável 'numero'

			se (numero % 2 == 0 e numero != 0) { // Se o número for par e diferente de 0
				contadorPares = contadorPares + 1 // Incrementa o contador de pares
			}
		} enquanto (numero != 0) // Continua enquanto o número for diferente de 0

		escreva("Total de números pares digitados: ", contadorPares, "\n") // Exibe a contagem de números pares
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 553; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */