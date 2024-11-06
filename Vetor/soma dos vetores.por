programa
{
	
	funcao inicio()
	{


	real valores[5]
	
	escreva ("Digite valores para preencher o vetor (máx.", 5, ")" + "\n")

	para (inteiro i = 0 ; i < 5; i++)
	{  
		escreva ("valor ", i + 1, ": ")
		leia (valores[i])		
}
	real resultado = 0
	para (inteiro i = 0; i < 5; i++)
{ 	
		
	resultado = resultado + valores[i]

	
	}		
    escreva ("a soma dos vetores é: ", resultado)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */