programa 
{
	funcao inicio() 
	{
		inteiro numero // Declara uma variável inteira para armazenar o número
		inteiro soma=0 // Declara uma variável inteira para armazenar a soma
	

		faca { // Início do loop
			escreva("Digite um número (0 para sair): ") // Solicita ao usuário que insira um número
			leia(numero) // Lê o número fornecido e armazena na variável 'numero'
			soma = soma + numero // Adiciona o número à soma
		} enquanto (numero != 0) // Continua enquanto o número for diferente de 0

		escreva("A soma dos números é: ", soma, "\n") // Exibe a soma total dos números
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */