//ordenação por inserção ele ordena o vetor com um elemento por vez
programa
{
    inclua biblioteca Util // Inclui a biblioteca Util para gerar números aleatórios

    funcao inicio()
    {
        inteiro numeros[5] // Declara um vetor que pode armazenar 5 números inteiros

        // Preenchendo o vetor com números aleatórios
        escreva("Preenchendo o vetor com números aleatórios:\n") 
        para (inteiro i = 0; i < 5; i++)
        {
            numeros[i] = Util.sorteia(0, 100) // Gera um número aleatório entre 0 e 100
            escreva(numeros[i], " ") // Mostra o número gerado na tela
        }
        escreva("\n") // Nova linha após a exibição dos números aleatórios

        // Insertion sort
        escreva("Iniciando o processo de ordenação:\n") // Mensagem informativa
        para (inteiro i = 1; i < 5; i++) // Começa do segundo elemento
        {
            inteiro chave = numeros[i] // O elemento a ser inserido
            inteiro j = i - 1 // Índice do último elemento da parte ordenada
            
            // Move os elementos da parte ordenada que são maiores que a chave para uma posição à frente
            enquanto (j >= 0 e numeros[j] > chave)
            {
                numeros[j + 1] = numeros[j] // Desloca o elemento para a direita
                j = j - 1 // Decrementa o índice
            }
            numeros[j + 1] = chave // Insere a chave na posição correta

            // Exibe o vetor após cada inserção
            escreva("Após inserir ", chave, ": ") // Mensagem indicando a chave que foi inserida
            para (inteiro k = 0; k < 5; k++) // Mostra o vetor após a inserção
            {
                escreva(numeros[k], " ") // Mostra cada número do vetor
            }
            escreva("\n") // Nova linha após a exibição do vetor
        }

        // Exibindo o vetor ordenado
        escreva("Vetor ordenado: ") // Mensagem antes de mostrar os números ordenados
        para (inteiro i = 0; i < 5; i++)
        {
            escreva(numeros[i], " ") // Mostra cada número do vetor ordenado
        }
        escreva("\n") // Nova linha após a exibição dos números
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 616; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */