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
		escreva ("os valores cadastrados são: \n")
		para (inteiro i = 0 ; i < 5; i++) {

			escreva ("\n", valores[i])
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */