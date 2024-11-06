//Laço Para (For)
programa 
{
	// Função principal do programa
	funcao inicio() 
	{
		// Declaração de variáveis inteiras 'numero', 'resultado' e 'contador'
		inteiro numero, resultado, contador
		
		// Solicita ao usuário que informe um número para ver sua tabuada
		escreva("Informe um número para ver sua tabuada: ")
		// Lê o número informado pelo usuário
		leia(numero)

		// Limpa a tela antes de exibir a tabuada
		limpa()
		
		// Laço de repetição que itera de 1 a 10
		para (contador = 1; contador <= 10; contador++) 
		{
			// Calcula o resultado da multiplicação do número pelo contador
			resultado = numero * contador 
			// Exibe a operação de multiplicação e o resultado
			escreva(numero, " X ", contador, " = ", resultado, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 17; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */