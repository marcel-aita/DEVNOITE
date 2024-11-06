//ordenação por seleção consistem em passar sempre o valor menor do vetor para a primeira posição.

programa
{
    inclua biblioteca Util 

    funcao inicio() 
    {
        inteiro numeros[5]

        // Preenchendo o vetor com números aleatórios
        escreva("Preenchendo o vetor com números aleatórios:\n") 
        para (inteiro i = 0; i < 5; i++)
        {
            // Gera um número aleatório entre 0 e 100 e armazena no vetor na posição i
            numeros[i] = Util.sorteia(0, 100) 
            escreva(numeros[i], " ") // Mostra o número gerado na tela
        }
        escreva("\n") // Nova linha após a exibição dos números aleatórios

        // Início do Selection Sort
        escreva("Iniciando o processo de ordenação:\n") // Mensagem informativa
        para (inteiro i = 0; i < 4; i++) // Loop externo controla o número de passagens (4 passagens para 5 elementos)
        {
            inteiro menor = i // Assume que o menor elemento é o atual na posição 'i'
            // Loop interno para encontrar o menor elemento na parte não ordenada do vetor
            para (inteiro j = i + 1; j < 5; j++) 
            {
                // Compara o elemento atual (numeros[j]) com o menor encontrado até agora (numeros[menor])
                se (numeros[j] < numeros[menor]) // Se o elemento atual for menor que o menor encontrado
                {
                    menor = j // Atualiza o índice do menor elemento
                }
            }

            // Verifica se um novo menor elemento foi encontrado
            se (menor != i) // Se o índice do menor elemento não é o mesmo que o índice atual
            {
                // Armazena o valor atual em 'temp' para a troca
                inteiro temp = numeros[i] 
                // Troca o menor elemento encontrado com o elemento na posição 'i'
                numeros[i] = numeros[menor] 
                numeros[menor] = temp // Coloca o valor armazenado em 'temp' na posição do menor elemento

                // Exibe a troca detalhando as posições alteradas
                escreva("Troca realizada: posição ", i, " (", numeros[menor], ") <-> posição ", menor, " (", temp, ")\n") // Mensagem indicando que uma troca foi feita com detalhes
                escreva("Vetor após a troca: ") // Mensagem para mostrar o vetor após a troca
                para (inteiro k = 0; k < 5; k++) // Loop para mostrar o vetor após a troca
                {
                    escreva(numeros[k], " ") // Mostra cada número do vetor após a troca
                }
                escreva("\n") // Nova linha após a exibição do vetor
            }
        }

        // Exibindo o vetor ordenado
        escreva("Vetor ordenado: ") // Exibe uma mensagem antes de mostrar os números ordenados
        para (inteiro i = 0; i < 5; i++) // Loop para mostrar os números ordenados
        {
            escreva(numeros[i], " ") // Mostra cada número do vetor ordenado
        }
        escreva("\n") // Adiciona uma nova linha após a exibição dos números
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 581; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */